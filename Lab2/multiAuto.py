import json
import subprocess
import os
import re
import shutil 
import sys
import threading
location_to_batch=os.getcwd()
current_solution="solution3"
outputs_lock=threading.lock()

#Thread to run multiple instances at once. This will assume  some presetup work has been
#done to the filesystem to allow for multithreads
class workThread (threading.Thread):
	def __init__(self, threadID, name, counter):
		threading.Thread.__init__(self)
		self.threadID = threadID
	def run(self):
		print("Test")
tiles_to_test={	"Tr":[1,2,3,4],
				"Tc":[1,2,3,4],
				"Tm":[5],
				"Tn":[1,2,3,4]}
				
tilecount={		"Tr":0,
				"Tc":0,
				"Tm":0,
				"Tn":0}
tcl_header="""#open a solution named solution3. It is created if it doesn't exist and is reset if it does
open_solution -reset %s
#Set the part number for this solution
set_part xczu3eg-sbva484-1-e
#Specify the clock we are aiming to meet (Defaulted to 10ns)
create_clock
"""
array_reshape_template="""set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufi
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufo
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufw
"""
tclselect="test.tcl"
outputs=open("Outputs.txt","a+")
def GrabJSONResults(thread_id):
	#file_path='%s\convolution\%s\%s_data.json' % (location_to_batch,current_solution, current_solution)
	file_path='%s\convolution\%s\syn\\report\convolve_kernel_csynth.rpt' % (location_to_batch,current_solution)
	print(file_path)
	minCycle=1000000000
	with open(file_path,'r') as resultFile:
		#results=json.load(jsonFile)
		line=resultFile.readline()
		while line.find("|ap_clk")==-1:
			line=resultFile.readline()
		timearr=[]
		line=line.split("|")
		for s in line:
			try:
				timearr.append(float(s))
			except:
				continue
		line=resultFile.readline()
		while line.find("Latency")==-1:
			line=resultFile.readline()
		#Skip 5 lines to get to what we care about
		resultFile.readline()
		resultFile.readline()
		resultFile.readline()
		resultFile.readline()
		resultFile.readline()
		line=resultFile.readline()
		line.strip(" \r\t\n")
		line=line.split("|")
		#Chose an arbitrary high
		minCycle=1000000000
		for i in line:
			try:
				minCycle=min(minCycle,int(i))
			except:
				continue
		line = resultFile.readline()
		while line.find("|Total") ==-1:
			line=resultFile.readline()
		line=line.split("|")
		newarr=[]
		for s in line:
			te="".join(c for c in s if c.isdigit())
			try:
				newarr.append(int(te))
			except:
				continue
		line = resultFile.readline()
		while line.find("|Utilization") ==-1:
			line=resultFile.readline()
		line=line.split("|")
		perc=[]
		for s in line:
			te="".join(c for c in s if c.isdigit())
			try:
				perc.append(int(te))
			except:
				continue
	return [minCycle,newarr,timearr,perc]
def CreateTileSizeString(thread_id):
	catstr=""
	for key in tilecount.keys():
		catstr+=str(tiles_to_test[key][tilecount[key]])+"_"
	return catstr
def UpdateSolutionName(type,thread_id):
	file_path='%s\Auto%d.tcl' % (location_to_batch,thread_id)
	with open(file_path, "w+") as tclfile:
		if (type == "Tile"):
			#Label Solutions in TcTrTmTn order
			catsr=CreateTileSizeString()
			
def SweepTileSize(thread_id):
	global outputs_lock
	file_path='%s\\tempkernel.h' % (location_to_batch)
	defstr="#define %s %d\n"
	#This is real dumb
	while tilecount["Tr"]<len(tiles_to_test["Tr"]):
		tilecount["Tc"]=0
		while tilecount["Tc"]<len(tiles_to_test["Tc"]):
			tilecount["Tm"]=0
			while tilecount["Tm"]<len(tiles_to_test["Tm"]):
				tilecount["Tn"]=0
				while tilecount["Tn"]<len(tiles_to_test["Tn"]):
					with open(file_path, "w+") as hfile:
						for key in tiles_to_test.keys():
							hfile.write(defstr % (key, tiles_to_test[key][tilecount[key]]))
					
					subprocess.call("vivado_hls -f %s" % (tclselect), shell=True)
					tilestr=CreateTileSizeString()
					parsed=GrabJSONResults()
					outputs.write("%s\n%s %s\n"%(tilestr, parsed[0],parsed[2][1]))
					outputs.write(",".join(str(s) for s in parsed[3]))
					outputs.write("\n")
					outputs.write(",".join(str(s) for s in parsed[1]))
					outputs.write("\n")
					l_f=50
					for key in tiles_to_test.keys():
						l_f=l_f*tiles_to_test[key][tilecount[key]]
					factor=l_f/parsed[0]
					util=""
					for useage in parsed[1]:
						if (useage==0):
							util+="0,"
						else:
							util+=str(factor/useage)+","
					
					outputs.write("%s\n%s\n" % (util, factor))
					outputs.flush()
					#UpdateSolutionName("Tile")
					
					tilecount["Tn"]=tilecount["Tn"]+1
				tilecount["Tm"]=tilecount["Tm"]+1
			tilecount["Tc"]=tilecount["Tc"]+1
		tilecount["Tr"]=tilecount["Tr"]+1
if __name__ == "__main__":
	print(location_to_batch)
	SweepTileSize()
	outputs.close()
	#GrabJSONResults()
	
