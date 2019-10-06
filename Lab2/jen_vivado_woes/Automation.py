import json
import subprocess
import os
import re
import shutil 
import sys
from math import floor as flr
location_to_batch=os.getcwd()
current_solution="solution4"
current_clock=10
clocks_to_test=[4, 6, 8]
resourceNames=["BRAM_18K", "DSP48E", "FF", "LUT"]

tiles_to_test={	"Tr":[31],
				"Tc":[31],
				"Tm":[48],
				"Tn":[128]}
				
tilecount={		"Tr":0,
				"Tc":0,
				"Tm":0,
				"Tn":0}
				
bufi_tests=[[1,"bufi"]]#,[1,"bufi"],[2,"bufi"],[3,"bufi"]]
bufw_tests=[[2,"bufw"]]#,[1,"bufw"],[2,"bufw"],[3,"bufw"]]
bufo_tests=[[]]#,[1,"bufo"],[2,"bufo"]]#,[1,"bufw"],[2,"bufw"],[3,"bufw"]]
args=[]
tcl_header="""#open project so we are actually modifying the project
open_project convolution

#open a solution named solution3. It is created if it doesn't exist and is reset if it does
open_solution -reset %s
#Set the part number for this solution
set_part xczu3eg-sbva484-1-e
#Specify the clock we are aiming to meet (Defaulted to 10ns)
create_clock -period %d
set_directive_pipeline "convolve_kernel/to_b_section"
set_directive_unroll "convolve_kernel/i_section"
"""

#arguments are (dimension, variable_name)
array_partition_template="""set_directive_array_partition -type complete -dim %d "convolve_kernel" %s
"""

array_reshape_template="""set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufi
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufo
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufw
"""

tcl_footer="""
csynth_design
#Done
exit
"""
tclselect="test.tcl"
outputs=open("Outputs.txt","a+")
def GrabJSONResults():
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
def CreateTileSizeString():
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
def ReWriteTCL(listPartition):
	file_path='%s\\test.tcl' % (location_to_batch)
	with open(file_path, "w+") as tclfile:
		tclfile.write(tcl_header % (current_solution,current_clock))
		#tclfile.write(array_reshape_template)
		for t in listPartition:
			tclfile.write(array_partition_template %(t[0],t[1]))
		tclfile.write(tcl_footer)
		tclfile.flush()
def SweepTileSize():
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
					outputs.write("%s\n%s\n%s %s\n"%(tilestr,str(args), parsed[0],parsed[2][1]))
					outputs.write(",".join(str(s) for s in parsed[3]))
					outputs.write("\n")
					outputs.write(",".join(str(s) for s in parsed[1]))
					outputs.write("\n")
					# Just assume DSP is the bottleneck
					actual_utils=[0,0,0,0]
					actual_utils[0]=100*(parsed[1][0]/432)
					actual_utils[1]=100*(parsed[1][1]/360)
					actual_utils[2]=100*(parsed[1][2]/141120)
					actual_utils[3]=100*(parsed[1][3]/70560)
					max_util=max(actual_utils)
					resindex=actual_utils.index(max_util)
					multiplier=flr(80/max_util)
					l_f=50
					for key in tiles_to_test.keys():
						l_f=l_f*tiles_to_test[key][tilecount[key]]
					factor=(l_f/parsed[0])*multiplier
					util=""
					for useage in parsed[1]:
						if (useage==0):
							util+="0,"
						else:
							util+=str(factor/useage)+","
					outputs.write("%s\n%s (x%d)\nLimited by: %s\nClock: %d\n\n" % (util, (factor/(.000000001*current_clock))/1000000000,multiplier,resourceNames[resindex],current_clock))
					outputs.flush()
					#UpdateSolutionName("Tile")
					
					tilecount["Tn"]=tilecount["Tn"]+1
				tilecount["Tm"]=tilecount["Tm"]+1
			tilecount["Tc"]=tilecount["Tc"]+1
		tilecount["Tr"]=tilecount["Tr"]+1

if __name__ == "__main__":
	print(location_to_batch)
	for t in clocks_to_test:
		for bufit in bufi_tests:
			for bufwt in bufw_tests:
				for bufot in bufo_tests:
					args=[]
					if (not bufit==[]):
						args.append(bufit)
					if (not bufwt==[]):
						args.append(bufwt)
					if (not bufot==[]):
						args.append(bufot)
					current_clock=t
					ReWriteTCL(args)
					SweepTileSize()
					for key in tilecount.keys():
						tilecount[key]=0
	#ReWriteTCL([1,"bufi"])
	#SweepTileSize()
	outputs.close()
	#GrabJSONResults()
	
