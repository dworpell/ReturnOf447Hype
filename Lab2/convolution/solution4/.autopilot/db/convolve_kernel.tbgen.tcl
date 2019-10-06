set moduleName convolve_kernel
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {convolve_kernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ bufw_0 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_1 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_2 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_3 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_4 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_5 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_6 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_7 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_8 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_9 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_10 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_11 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_12 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_13 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_14 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_15 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_16 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_17 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_18 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_19 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_20 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_21 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_22 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_23 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_24 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_25 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_26 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_27 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_28 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_29 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_30 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_31 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_32 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_33 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_34 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_35 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_36 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_37 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_38 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_39 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_40 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_41 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_42 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_43 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_44 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_45 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_46 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufw_47 float 32 regular {array 1200 { 1 3 } 1 1 }  }
	{ bufi_0 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_1 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_2 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_3 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_4 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_5 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_6 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_7 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_8 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_9 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_10 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_11 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_12 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_13 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_14 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_15 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_16 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_17 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_18 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_19 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_20 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_21 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_22 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_23 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_24 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_25 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_26 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_27 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_28 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_29 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_30 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_31 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_32 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_33 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_34 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_35 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_36 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_37 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_38 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_39 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_40 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_41 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_42 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_43 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_44 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_45 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_46 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufi_47 float 32 regular {array 1225 { 1 3 } 1 1 }  }
	{ bufo float 32 regular {array 46128 { 1 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bufw_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 8,"up" : 8,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 9,"up" : 9,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 10,"up" : 10,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 11,"up" : 11,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 12,"up" : 12,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 13,"up" : 13,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 14,"up" : 14,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 15,"up" : 15,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 16,"up" : 16,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 17,"up" : 17,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 18,"up" : 18,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 19,"up" : 19,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 20,"up" : 20,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 21,"up" : 21,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 22,"up" : 22,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 23,"up" : 23,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 24,"up" : 24,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 25,"up" : 25,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 26,"up" : 26,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 27,"up" : 27,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 28,"up" : 28,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 29,"up" : 29,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 30,"up" : 30,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 31,"up" : 31,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_32", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 32,"up" : 32,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_33", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 33,"up" : 33,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_34", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 34,"up" : 34,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_35", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 35,"up" : 35,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_36", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 36,"up" : 36,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_37", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 37,"up" : 37,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_38", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 38,"up" : 38,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_39", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 39,"up" : 39,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_40", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 40,"up" : 40,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_41", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 41,"up" : 41,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_42", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 42,"up" : 42,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_43", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 43,"up" : 43,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_44", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 44,"up" : 44,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_45", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 45,"up" : 45,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_46", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 46,"up" : 46,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufw_47", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufw","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 47,"up" : 47,"step" : 2},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 10,"up" : 10,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 11,"up" : 11,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 12,"up" : 12,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 13,"up" : 13,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 14,"up" : 14,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 15,"up" : 15,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 16,"up" : 16,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 17,"up" : 17,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 18,"up" : 18,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 19,"up" : 19,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 20,"up" : 20,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 21,"up" : 21,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 22,"up" : 22,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 23,"up" : 23,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 24,"up" : 24,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 25,"up" : 25,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 26,"up" : 26,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 27,"up" : 27,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 28,"up" : 28,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 29,"up" : 29,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 30,"up" : 30,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 31,"up" : 31,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_32", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 32,"up" : 32,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_33", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 33,"up" : 33,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_34", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 34,"up" : 34,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_35", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 35,"up" : 35,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_36", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 36,"up" : 36,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_37", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 37,"up" : 37,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_38", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 38,"up" : 38,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_39", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 39,"up" : 39,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_40", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 40,"up" : 40,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_41", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 41,"up" : 41,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_42", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 42,"up" : 42,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_43", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 43,"up" : 43,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_44", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 44,"up" : 44,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_45", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 45,"up" : 45,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_46", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 46,"up" : 46,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufi_47", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufi","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 47,"up" : 47,"step" : 2},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "bufo", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bufo","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 47,"step" : 1},{"low" : 0,"up" : 30,"step" : 1},{"low" : 0,"up" : 30,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 315
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ bufw_0_address0 sc_out sc_lv 11 signal 0 } 
	{ bufw_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ bufw_0_q0 sc_in sc_lv 32 signal 0 } 
	{ bufw_1_address0 sc_out sc_lv 11 signal 1 } 
	{ bufw_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ bufw_1_q0 sc_in sc_lv 32 signal 1 } 
	{ bufw_2_address0 sc_out sc_lv 11 signal 2 } 
	{ bufw_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ bufw_2_q0 sc_in sc_lv 32 signal 2 } 
	{ bufw_3_address0 sc_out sc_lv 11 signal 3 } 
	{ bufw_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ bufw_3_q0 sc_in sc_lv 32 signal 3 } 
	{ bufw_4_address0 sc_out sc_lv 11 signal 4 } 
	{ bufw_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ bufw_4_q0 sc_in sc_lv 32 signal 4 } 
	{ bufw_5_address0 sc_out sc_lv 11 signal 5 } 
	{ bufw_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ bufw_5_q0 sc_in sc_lv 32 signal 5 } 
	{ bufw_6_address0 sc_out sc_lv 11 signal 6 } 
	{ bufw_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ bufw_6_q0 sc_in sc_lv 32 signal 6 } 
	{ bufw_7_address0 sc_out sc_lv 11 signal 7 } 
	{ bufw_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ bufw_7_q0 sc_in sc_lv 32 signal 7 } 
	{ bufw_8_address0 sc_out sc_lv 11 signal 8 } 
	{ bufw_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ bufw_8_q0 sc_in sc_lv 32 signal 8 } 
	{ bufw_9_address0 sc_out sc_lv 11 signal 9 } 
	{ bufw_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ bufw_9_q0 sc_in sc_lv 32 signal 9 } 
	{ bufw_10_address0 sc_out sc_lv 11 signal 10 } 
	{ bufw_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ bufw_10_q0 sc_in sc_lv 32 signal 10 } 
	{ bufw_11_address0 sc_out sc_lv 11 signal 11 } 
	{ bufw_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ bufw_11_q0 sc_in sc_lv 32 signal 11 } 
	{ bufw_12_address0 sc_out sc_lv 11 signal 12 } 
	{ bufw_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ bufw_12_q0 sc_in sc_lv 32 signal 12 } 
	{ bufw_13_address0 sc_out sc_lv 11 signal 13 } 
	{ bufw_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ bufw_13_q0 sc_in sc_lv 32 signal 13 } 
	{ bufw_14_address0 sc_out sc_lv 11 signal 14 } 
	{ bufw_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ bufw_14_q0 sc_in sc_lv 32 signal 14 } 
	{ bufw_15_address0 sc_out sc_lv 11 signal 15 } 
	{ bufw_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ bufw_15_q0 sc_in sc_lv 32 signal 15 } 
	{ bufw_16_address0 sc_out sc_lv 11 signal 16 } 
	{ bufw_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ bufw_16_q0 sc_in sc_lv 32 signal 16 } 
	{ bufw_17_address0 sc_out sc_lv 11 signal 17 } 
	{ bufw_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ bufw_17_q0 sc_in sc_lv 32 signal 17 } 
	{ bufw_18_address0 sc_out sc_lv 11 signal 18 } 
	{ bufw_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ bufw_18_q0 sc_in sc_lv 32 signal 18 } 
	{ bufw_19_address0 sc_out sc_lv 11 signal 19 } 
	{ bufw_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ bufw_19_q0 sc_in sc_lv 32 signal 19 } 
	{ bufw_20_address0 sc_out sc_lv 11 signal 20 } 
	{ bufw_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ bufw_20_q0 sc_in sc_lv 32 signal 20 } 
	{ bufw_21_address0 sc_out sc_lv 11 signal 21 } 
	{ bufw_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ bufw_21_q0 sc_in sc_lv 32 signal 21 } 
	{ bufw_22_address0 sc_out sc_lv 11 signal 22 } 
	{ bufw_22_ce0 sc_out sc_logic 1 signal 22 } 
	{ bufw_22_q0 sc_in sc_lv 32 signal 22 } 
	{ bufw_23_address0 sc_out sc_lv 11 signal 23 } 
	{ bufw_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ bufw_23_q0 sc_in sc_lv 32 signal 23 } 
	{ bufw_24_address0 sc_out sc_lv 11 signal 24 } 
	{ bufw_24_ce0 sc_out sc_logic 1 signal 24 } 
	{ bufw_24_q0 sc_in sc_lv 32 signal 24 } 
	{ bufw_25_address0 sc_out sc_lv 11 signal 25 } 
	{ bufw_25_ce0 sc_out sc_logic 1 signal 25 } 
	{ bufw_25_q0 sc_in sc_lv 32 signal 25 } 
	{ bufw_26_address0 sc_out sc_lv 11 signal 26 } 
	{ bufw_26_ce0 sc_out sc_logic 1 signal 26 } 
	{ bufw_26_q0 sc_in sc_lv 32 signal 26 } 
	{ bufw_27_address0 sc_out sc_lv 11 signal 27 } 
	{ bufw_27_ce0 sc_out sc_logic 1 signal 27 } 
	{ bufw_27_q0 sc_in sc_lv 32 signal 27 } 
	{ bufw_28_address0 sc_out sc_lv 11 signal 28 } 
	{ bufw_28_ce0 sc_out sc_logic 1 signal 28 } 
	{ bufw_28_q0 sc_in sc_lv 32 signal 28 } 
	{ bufw_29_address0 sc_out sc_lv 11 signal 29 } 
	{ bufw_29_ce0 sc_out sc_logic 1 signal 29 } 
	{ bufw_29_q0 sc_in sc_lv 32 signal 29 } 
	{ bufw_30_address0 sc_out sc_lv 11 signal 30 } 
	{ bufw_30_ce0 sc_out sc_logic 1 signal 30 } 
	{ bufw_30_q0 sc_in sc_lv 32 signal 30 } 
	{ bufw_31_address0 sc_out sc_lv 11 signal 31 } 
	{ bufw_31_ce0 sc_out sc_logic 1 signal 31 } 
	{ bufw_31_q0 sc_in sc_lv 32 signal 31 } 
	{ bufw_32_address0 sc_out sc_lv 11 signal 32 } 
	{ bufw_32_ce0 sc_out sc_logic 1 signal 32 } 
	{ bufw_32_q0 sc_in sc_lv 32 signal 32 } 
	{ bufw_33_address0 sc_out sc_lv 11 signal 33 } 
	{ bufw_33_ce0 sc_out sc_logic 1 signal 33 } 
	{ bufw_33_q0 sc_in sc_lv 32 signal 33 } 
	{ bufw_34_address0 sc_out sc_lv 11 signal 34 } 
	{ bufw_34_ce0 sc_out sc_logic 1 signal 34 } 
	{ bufw_34_q0 sc_in sc_lv 32 signal 34 } 
	{ bufw_35_address0 sc_out sc_lv 11 signal 35 } 
	{ bufw_35_ce0 sc_out sc_logic 1 signal 35 } 
	{ bufw_35_q0 sc_in sc_lv 32 signal 35 } 
	{ bufw_36_address0 sc_out sc_lv 11 signal 36 } 
	{ bufw_36_ce0 sc_out sc_logic 1 signal 36 } 
	{ bufw_36_q0 sc_in sc_lv 32 signal 36 } 
	{ bufw_37_address0 sc_out sc_lv 11 signal 37 } 
	{ bufw_37_ce0 sc_out sc_logic 1 signal 37 } 
	{ bufw_37_q0 sc_in sc_lv 32 signal 37 } 
	{ bufw_38_address0 sc_out sc_lv 11 signal 38 } 
	{ bufw_38_ce0 sc_out sc_logic 1 signal 38 } 
	{ bufw_38_q0 sc_in sc_lv 32 signal 38 } 
	{ bufw_39_address0 sc_out sc_lv 11 signal 39 } 
	{ bufw_39_ce0 sc_out sc_logic 1 signal 39 } 
	{ bufw_39_q0 sc_in sc_lv 32 signal 39 } 
	{ bufw_40_address0 sc_out sc_lv 11 signal 40 } 
	{ bufw_40_ce0 sc_out sc_logic 1 signal 40 } 
	{ bufw_40_q0 sc_in sc_lv 32 signal 40 } 
	{ bufw_41_address0 sc_out sc_lv 11 signal 41 } 
	{ bufw_41_ce0 sc_out sc_logic 1 signal 41 } 
	{ bufw_41_q0 sc_in sc_lv 32 signal 41 } 
	{ bufw_42_address0 sc_out sc_lv 11 signal 42 } 
	{ bufw_42_ce0 sc_out sc_logic 1 signal 42 } 
	{ bufw_42_q0 sc_in sc_lv 32 signal 42 } 
	{ bufw_43_address0 sc_out sc_lv 11 signal 43 } 
	{ bufw_43_ce0 sc_out sc_logic 1 signal 43 } 
	{ bufw_43_q0 sc_in sc_lv 32 signal 43 } 
	{ bufw_44_address0 sc_out sc_lv 11 signal 44 } 
	{ bufw_44_ce0 sc_out sc_logic 1 signal 44 } 
	{ bufw_44_q0 sc_in sc_lv 32 signal 44 } 
	{ bufw_45_address0 sc_out sc_lv 11 signal 45 } 
	{ bufw_45_ce0 sc_out sc_logic 1 signal 45 } 
	{ bufw_45_q0 sc_in sc_lv 32 signal 45 } 
	{ bufw_46_address0 sc_out sc_lv 11 signal 46 } 
	{ bufw_46_ce0 sc_out sc_logic 1 signal 46 } 
	{ bufw_46_q0 sc_in sc_lv 32 signal 46 } 
	{ bufw_47_address0 sc_out sc_lv 11 signal 47 } 
	{ bufw_47_ce0 sc_out sc_logic 1 signal 47 } 
	{ bufw_47_q0 sc_in sc_lv 32 signal 47 } 
	{ bufi_0_address0 sc_out sc_lv 11 signal 48 } 
	{ bufi_0_ce0 sc_out sc_logic 1 signal 48 } 
	{ bufi_0_q0 sc_in sc_lv 32 signal 48 } 
	{ bufi_1_address0 sc_out sc_lv 11 signal 49 } 
	{ bufi_1_ce0 sc_out sc_logic 1 signal 49 } 
	{ bufi_1_q0 sc_in sc_lv 32 signal 49 } 
	{ bufi_2_address0 sc_out sc_lv 11 signal 50 } 
	{ bufi_2_ce0 sc_out sc_logic 1 signal 50 } 
	{ bufi_2_q0 sc_in sc_lv 32 signal 50 } 
	{ bufi_3_address0 sc_out sc_lv 11 signal 51 } 
	{ bufi_3_ce0 sc_out sc_logic 1 signal 51 } 
	{ bufi_3_q0 sc_in sc_lv 32 signal 51 } 
	{ bufi_4_address0 sc_out sc_lv 11 signal 52 } 
	{ bufi_4_ce0 sc_out sc_logic 1 signal 52 } 
	{ bufi_4_q0 sc_in sc_lv 32 signal 52 } 
	{ bufi_5_address0 sc_out sc_lv 11 signal 53 } 
	{ bufi_5_ce0 sc_out sc_logic 1 signal 53 } 
	{ bufi_5_q0 sc_in sc_lv 32 signal 53 } 
	{ bufi_6_address0 sc_out sc_lv 11 signal 54 } 
	{ bufi_6_ce0 sc_out sc_logic 1 signal 54 } 
	{ bufi_6_q0 sc_in sc_lv 32 signal 54 } 
	{ bufi_7_address0 sc_out sc_lv 11 signal 55 } 
	{ bufi_7_ce0 sc_out sc_logic 1 signal 55 } 
	{ bufi_7_q0 sc_in sc_lv 32 signal 55 } 
	{ bufi_8_address0 sc_out sc_lv 11 signal 56 } 
	{ bufi_8_ce0 sc_out sc_logic 1 signal 56 } 
	{ bufi_8_q0 sc_in sc_lv 32 signal 56 } 
	{ bufi_9_address0 sc_out sc_lv 11 signal 57 } 
	{ bufi_9_ce0 sc_out sc_logic 1 signal 57 } 
	{ bufi_9_q0 sc_in sc_lv 32 signal 57 } 
	{ bufi_10_address0 sc_out sc_lv 11 signal 58 } 
	{ bufi_10_ce0 sc_out sc_logic 1 signal 58 } 
	{ bufi_10_q0 sc_in sc_lv 32 signal 58 } 
	{ bufi_11_address0 sc_out sc_lv 11 signal 59 } 
	{ bufi_11_ce0 sc_out sc_logic 1 signal 59 } 
	{ bufi_11_q0 sc_in sc_lv 32 signal 59 } 
	{ bufi_12_address0 sc_out sc_lv 11 signal 60 } 
	{ bufi_12_ce0 sc_out sc_logic 1 signal 60 } 
	{ bufi_12_q0 sc_in sc_lv 32 signal 60 } 
	{ bufi_13_address0 sc_out sc_lv 11 signal 61 } 
	{ bufi_13_ce0 sc_out sc_logic 1 signal 61 } 
	{ bufi_13_q0 sc_in sc_lv 32 signal 61 } 
	{ bufi_14_address0 sc_out sc_lv 11 signal 62 } 
	{ bufi_14_ce0 sc_out sc_logic 1 signal 62 } 
	{ bufi_14_q0 sc_in sc_lv 32 signal 62 } 
	{ bufi_15_address0 sc_out sc_lv 11 signal 63 } 
	{ bufi_15_ce0 sc_out sc_logic 1 signal 63 } 
	{ bufi_15_q0 sc_in sc_lv 32 signal 63 } 
	{ bufi_16_address0 sc_out sc_lv 11 signal 64 } 
	{ bufi_16_ce0 sc_out sc_logic 1 signal 64 } 
	{ bufi_16_q0 sc_in sc_lv 32 signal 64 } 
	{ bufi_17_address0 sc_out sc_lv 11 signal 65 } 
	{ bufi_17_ce0 sc_out sc_logic 1 signal 65 } 
	{ bufi_17_q0 sc_in sc_lv 32 signal 65 } 
	{ bufi_18_address0 sc_out sc_lv 11 signal 66 } 
	{ bufi_18_ce0 sc_out sc_logic 1 signal 66 } 
	{ bufi_18_q0 sc_in sc_lv 32 signal 66 } 
	{ bufi_19_address0 sc_out sc_lv 11 signal 67 } 
	{ bufi_19_ce0 sc_out sc_logic 1 signal 67 } 
	{ bufi_19_q0 sc_in sc_lv 32 signal 67 } 
	{ bufi_20_address0 sc_out sc_lv 11 signal 68 } 
	{ bufi_20_ce0 sc_out sc_logic 1 signal 68 } 
	{ bufi_20_q0 sc_in sc_lv 32 signal 68 } 
	{ bufi_21_address0 sc_out sc_lv 11 signal 69 } 
	{ bufi_21_ce0 sc_out sc_logic 1 signal 69 } 
	{ bufi_21_q0 sc_in sc_lv 32 signal 69 } 
	{ bufi_22_address0 sc_out sc_lv 11 signal 70 } 
	{ bufi_22_ce0 sc_out sc_logic 1 signal 70 } 
	{ bufi_22_q0 sc_in sc_lv 32 signal 70 } 
	{ bufi_23_address0 sc_out sc_lv 11 signal 71 } 
	{ bufi_23_ce0 sc_out sc_logic 1 signal 71 } 
	{ bufi_23_q0 sc_in sc_lv 32 signal 71 } 
	{ bufi_24_address0 sc_out sc_lv 11 signal 72 } 
	{ bufi_24_ce0 sc_out sc_logic 1 signal 72 } 
	{ bufi_24_q0 sc_in sc_lv 32 signal 72 } 
	{ bufi_25_address0 sc_out sc_lv 11 signal 73 } 
	{ bufi_25_ce0 sc_out sc_logic 1 signal 73 } 
	{ bufi_25_q0 sc_in sc_lv 32 signal 73 } 
	{ bufi_26_address0 sc_out sc_lv 11 signal 74 } 
	{ bufi_26_ce0 sc_out sc_logic 1 signal 74 } 
	{ bufi_26_q0 sc_in sc_lv 32 signal 74 } 
	{ bufi_27_address0 sc_out sc_lv 11 signal 75 } 
	{ bufi_27_ce0 sc_out sc_logic 1 signal 75 } 
	{ bufi_27_q0 sc_in sc_lv 32 signal 75 } 
	{ bufi_28_address0 sc_out sc_lv 11 signal 76 } 
	{ bufi_28_ce0 sc_out sc_logic 1 signal 76 } 
	{ bufi_28_q0 sc_in sc_lv 32 signal 76 } 
	{ bufi_29_address0 sc_out sc_lv 11 signal 77 } 
	{ bufi_29_ce0 sc_out sc_logic 1 signal 77 } 
	{ bufi_29_q0 sc_in sc_lv 32 signal 77 } 
	{ bufi_30_address0 sc_out sc_lv 11 signal 78 } 
	{ bufi_30_ce0 sc_out sc_logic 1 signal 78 } 
	{ bufi_30_q0 sc_in sc_lv 32 signal 78 } 
	{ bufi_31_address0 sc_out sc_lv 11 signal 79 } 
	{ bufi_31_ce0 sc_out sc_logic 1 signal 79 } 
	{ bufi_31_q0 sc_in sc_lv 32 signal 79 } 
	{ bufi_32_address0 sc_out sc_lv 11 signal 80 } 
	{ bufi_32_ce0 sc_out sc_logic 1 signal 80 } 
	{ bufi_32_q0 sc_in sc_lv 32 signal 80 } 
	{ bufi_33_address0 sc_out sc_lv 11 signal 81 } 
	{ bufi_33_ce0 sc_out sc_logic 1 signal 81 } 
	{ bufi_33_q0 sc_in sc_lv 32 signal 81 } 
	{ bufi_34_address0 sc_out sc_lv 11 signal 82 } 
	{ bufi_34_ce0 sc_out sc_logic 1 signal 82 } 
	{ bufi_34_q0 sc_in sc_lv 32 signal 82 } 
	{ bufi_35_address0 sc_out sc_lv 11 signal 83 } 
	{ bufi_35_ce0 sc_out sc_logic 1 signal 83 } 
	{ bufi_35_q0 sc_in sc_lv 32 signal 83 } 
	{ bufi_36_address0 sc_out sc_lv 11 signal 84 } 
	{ bufi_36_ce0 sc_out sc_logic 1 signal 84 } 
	{ bufi_36_q0 sc_in sc_lv 32 signal 84 } 
	{ bufi_37_address0 sc_out sc_lv 11 signal 85 } 
	{ bufi_37_ce0 sc_out sc_logic 1 signal 85 } 
	{ bufi_37_q0 sc_in sc_lv 32 signal 85 } 
	{ bufi_38_address0 sc_out sc_lv 11 signal 86 } 
	{ bufi_38_ce0 sc_out sc_logic 1 signal 86 } 
	{ bufi_38_q0 sc_in sc_lv 32 signal 86 } 
	{ bufi_39_address0 sc_out sc_lv 11 signal 87 } 
	{ bufi_39_ce0 sc_out sc_logic 1 signal 87 } 
	{ bufi_39_q0 sc_in sc_lv 32 signal 87 } 
	{ bufi_40_address0 sc_out sc_lv 11 signal 88 } 
	{ bufi_40_ce0 sc_out sc_logic 1 signal 88 } 
	{ bufi_40_q0 sc_in sc_lv 32 signal 88 } 
	{ bufi_41_address0 sc_out sc_lv 11 signal 89 } 
	{ bufi_41_ce0 sc_out sc_logic 1 signal 89 } 
	{ bufi_41_q0 sc_in sc_lv 32 signal 89 } 
	{ bufi_42_address0 sc_out sc_lv 11 signal 90 } 
	{ bufi_42_ce0 sc_out sc_logic 1 signal 90 } 
	{ bufi_42_q0 sc_in sc_lv 32 signal 90 } 
	{ bufi_43_address0 sc_out sc_lv 11 signal 91 } 
	{ bufi_43_ce0 sc_out sc_logic 1 signal 91 } 
	{ bufi_43_q0 sc_in sc_lv 32 signal 91 } 
	{ bufi_44_address0 sc_out sc_lv 11 signal 92 } 
	{ bufi_44_ce0 sc_out sc_logic 1 signal 92 } 
	{ bufi_44_q0 sc_in sc_lv 32 signal 92 } 
	{ bufi_45_address0 sc_out sc_lv 11 signal 93 } 
	{ bufi_45_ce0 sc_out sc_logic 1 signal 93 } 
	{ bufi_45_q0 sc_in sc_lv 32 signal 93 } 
	{ bufi_46_address0 sc_out sc_lv 11 signal 94 } 
	{ bufi_46_ce0 sc_out sc_logic 1 signal 94 } 
	{ bufi_46_q0 sc_in sc_lv 32 signal 94 } 
	{ bufi_47_address0 sc_out sc_lv 11 signal 95 } 
	{ bufi_47_ce0 sc_out sc_logic 1 signal 95 } 
	{ bufi_47_q0 sc_in sc_lv 32 signal 95 } 
	{ bufo_address0 sc_out sc_lv 16 signal 96 } 
	{ bufo_ce0 sc_out sc_logic 1 signal 96 } 
	{ bufo_q0 sc_in sc_lv 32 signal 96 } 
	{ bufo_address1 sc_out sc_lv 16 signal 96 } 
	{ bufo_ce1 sc_out sc_logic 1 signal 96 } 
	{ bufo_we1 sc_out sc_logic 1 signal 96 } 
	{ bufo_d1 sc_out sc_lv 32 signal 96 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"convolve_kernel","role":"start","value":"0","valid_bit":"0"},{"name":"convolve_kernel","role":"continue","value":"0","valid_bit":"4"},{"name":"convolve_kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"convolve_kernel","role":"start","value":"0","valid_bit":"0"},{"name":"convolve_kernel","role":"done","value":"0","valid_bit":"1"},{"name":"convolve_kernel","role":"idle","value":"0","valid_bit":"2"},{"name":"convolve_kernel","role":"ready","value":"0","valid_bit":"3"},{"name":"convolve_kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "bufw_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_0", "role": "address0" }} , 
 	{ "name": "bufw_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_0", "role": "ce0" }} , 
 	{ "name": "bufw_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_0", "role": "q0" }} , 
 	{ "name": "bufw_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_1", "role": "address0" }} , 
 	{ "name": "bufw_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_1", "role": "ce0" }} , 
 	{ "name": "bufw_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_1", "role": "q0" }} , 
 	{ "name": "bufw_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_2", "role": "address0" }} , 
 	{ "name": "bufw_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_2", "role": "ce0" }} , 
 	{ "name": "bufw_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_2", "role": "q0" }} , 
 	{ "name": "bufw_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_3", "role": "address0" }} , 
 	{ "name": "bufw_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_3", "role": "ce0" }} , 
 	{ "name": "bufw_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_3", "role": "q0" }} , 
 	{ "name": "bufw_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_4", "role": "address0" }} , 
 	{ "name": "bufw_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_4", "role": "ce0" }} , 
 	{ "name": "bufw_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_4", "role": "q0" }} , 
 	{ "name": "bufw_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_5", "role": "address0" }} , 
 	{ "name": "bufw_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_5", "role": "ce0" }} , 
 	{ "name": "bufw_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_5", "role": "q0" }} , 
 	{ "name": "bufw_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_6", "role": "address0" }} , 
 	{ "name": "bufw_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_6", "role": "ce0" }} , 
 	{ "name": "bufw_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_6", "role": "q0" }} , 
 	{ "name": "bufw_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_7", "role": "address0" }} , 
 	{ "name": "bufw_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_7", "role": "ce0" }} , 
 	{ "name": "bufw_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_7", "role": "q0" }} , 
 	{ "name": "bufw_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_8", "role": "address0" }} , 
 	{ "name": "bufw_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_8", "role": "ce0" }} , 
 	{ "name": "bufw_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_8", "role": "q0" }} , 
 	{ "name": "bufw_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_9", "role": "address0" }} , 
 	{ "name": "bufw_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_9", "role": "ce0" }} , 
 	{ "name": "bufw_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_9", "role": "q0" }} , 
 	{ "name": "bufw_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_10", "role": "address0" }} , 
 	{ "name": "bufw_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_10", "role": "ce0" }} , 
 	{ "name": "bufw_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_10", "role": "q0" }} , 
 	{ "name": "bufw_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_11", "role": "address0" }} , 
 	{ "name": "bufw_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_11", "role": "ce0" }} , 
 	{ "name": "bufw_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_11", "role": "q0" }} , 
 	{ "name": "bufw_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_12", "role": "address0" }} , 
 	{ "name": "bufw_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_12", "role": "ce0" }} , 
 	{ "name": "bufw_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_12", "role": "q0" }} , 
 	{ "name": "bufw_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_13", "role": "address0" }} , 
 	{ "name": "bufw_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_13", "role": "ce0" }} , 
 	{ "name": "bufw_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_13", "role": "q0" }} , 
 	{ "name": "bufw_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_14", "role": "address0" }} , 
 	{ "name": "bufw_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_14", "role": "ce0" }} , 
 	{ "name": "bufw_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_14", "role": "q0" }} , 
 	{ "name": "bufw_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_15", "role": "address0" }} , 
 	{ "name": "bufw_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_15", "role": "ce0" }} , 
 	{ "name": "bufw_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_15", "role": "q0" }} , 
 	{ "name": "bufw_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_16", "role": "address0" }} , 
 	{ "name": "bufw_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_16", "role": "ce0" }} , 
 	{ "name": "bufw_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_16", "role": "q0" }} , 
 	{ "name": "bufw_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_17", "role": "address0" }} , 
 	{ "name": "bufw_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_17", "role": "ce0" }} , 
 	{ "name": "bufw_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_17", "role": "q0" }} , 
 	{ "name": "bufw_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_18", "role": "address0" }} , 
 	{ "name": "bufw_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_18", "role": "ce0" }} , 
 	{ "name": "bufw_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_18", "role": "q0" }} , 
 	{ "name": "bufw_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_19", "role": "address0" }} , 
 	{ "name": "bufw_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_19", "role": "ce0" }} , 
 	{ "name": "bufw_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_19", "role": "q0" }} , 
 	{ "name": "bufw_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_20", "role": "address0" }} , 
 	{ "name": "bufw_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_20", "role": "ce0" }} , 
 	{ "name": "bufw_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_20", "role": "q0" }} , 
 	{ "name": "bufw_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_21", "role": "address0" }} , 
 	{ "name": "bufw_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_21", "role": "ce0" }} , 
 	{ "name": "bufw_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_21", "role": "q0" }} , 
 	{ "name": "bufw_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_22", "role": "address0" }} , 
 	{ "name": "bufw_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_22", "role": "ce0" }} , 
 	{ "name": "bufw_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_22", "role": "q0" }} , 
 	{ "name": "bufw_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_23", "role": "address0" }} , 
 	{ "name": "bufw_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_23", "role": "ce0" }} , 
 	{ "name": "bufw_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_23", "role": "q0" }} , 
 	{ "name": "bufw_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_24", "role": "address0" }} , 
 	{ "name": "bufw_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_24", "role": "ce0" }} , 
 	{ "name": "bufw_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_24", "role": "q0" }} , 
 	{ "name": "bufw_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_25", "role": "address0" }} , 
 	{ "name": "bufw_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_25", "role": "ce0" }} , 
 	{ "name": "bufw_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_25", "role": "q0" }} , 
 	{ "name": "bufw_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_26", "role": "address0" }} , 
 	{ "name": "bufw_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_26", "role": "ce0" }} , 
 	{ "name": "bufw_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_26", "role": "q0" }} , 
 	{ "name": "bufw_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_27", "role": "address0" }} , 
 	{ "name": "bufw_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_27", "role": "ce0" }} , 
 	{ "name": "bufw_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_27", "role": "q0" }} , 
 	{ "name": "bufw_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_28", "role": "address0" }} , 
 	{ "name": "bufw_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_28", "role": "ce0" }} , 
 	{ "name": "bufw_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_28", "role": "q0" }} , 
 	{ "name": "bufw_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_29", "role": "address0" }} , 
 	{ "name": "bufw_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_29", "role": "ce0" }} , 
 	{ "name": "bufw_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_29", "role": "q0" }} , 
 	{ "name": "bufw_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_30", "role": "address0" }} , 
 	{ "name": "bufw_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_30", "role": "ce0" }} , 
 	{ "name": "bufw_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_30", "role": "q0" }} , 
 	{ "name": "bufw_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_31", "role": "address0" }} , 
 	{ "name": "bufw_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_31", "role": "ce0" }} , 
 	{ "name": "bufw_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_31", "role": "q0" }} , 
 	{ "name": "bufw_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_32", "role": "address0" }} , 
 	{ "name": "bufw_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_32", "role": "ce0" }} , 
 	{ "name": "bufw_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_32", "role": "q0" }} , 
 	{ "name": "bufw_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_33", "role": "address0" }} , 
 	{ "name": "bufw_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_33", "role": "ce0" }} , 
 	{ "name": "bufw_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_33", "role": "q0" }} , 
 	{ "name": "bufw_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_34", "role": "address0" }} , 
 	{ "name": "bufw_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_34", "role": "ce0" }} , 
 	{ "name": "bufw_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_34", "role": "q0" }} , 
 	{ "name": "bufw_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_35", "role": "address0" }} , 
 	{ "name": "bufw_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_35", "role": "ce0" }} , 
 	{ "name": "bufw_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_35", "role": "q0" }} , 
 	{ "name": "bufw_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_36", "role": "address0" }} , 
 	{ "name": "bufw_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_36", "role": "ce0" }} , 
 	{ "name": "bufw_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_36", "role": "q0" }} , 
 	{ "name": "bufw_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_37", "role": "address0" }} , 
 	{ "name": "bufw_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_37", "role": "ce0" }} , 
 	{ "name": "bufw_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_37", "role": "q0" }} , 
 	{ "name": "bufw_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_38", "role": "address0" }} , 
 	{ "name": "bufw_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_38", "role": "ce0" }} , 
 	{ "name": "bufw_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_38", "role": "q0" }} , 
 	{ "name": "bufw_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_39", "role": "address0" }} , 
 	{ "name": "bufw_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_39", "role": "ce0" }} , 
 	{ "name": "bufw_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_39", "role": "q0" }} , 
 	{ "name": "bufw_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_40", "role": "address0" }} , 
 	{ "name": "bufw_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_40", "role": "ce0" }} , 
 	{ "name": "bufw_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_40", "role": "q0" }} , 
 	{ "name": "bufw_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_41", "role": "address0" }} , 
 	{ "name": "bufw_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_41", "role": "ce0" }} , 
 	{ "name": "bufw_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_41", "role": "q0" }} , 
 	{ "name": "bufw_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_42", "role": "address0" }} , 
 	{ "name": "bufw_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_42", "role": "ce0" }} , 
 	{ "name": "bufw_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_42", "role": "q0" }} , 
 	{ "name": "bufw_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_43", "role": "address0" }} , 
 	{ "name": "bufw_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_43", "role": "ce0" }} , 
 	{ "name": "bufw_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_43", "role": "q0" }} , 
 	{ "name": "bufw_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_44", "role": "address0" }} , 
 	{ "name": "bufw_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_44", "role": "ce0" }} , 
 	{ "name": "bufw_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_44", "role": "q0" }} , 
 	{ "name": "bufw_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_45", "role": "address0" }} , 
 	{ "name": "bufw_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_45", "role": "ce0" }} , 
 	{ "name": "bufw_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_45", "role": "q0" }} , 
 	{ "name": "bufw_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_46", "role": "address0" }} , 
 	{ "name": "bufw_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_46", "role": "ce0" }} , 
 	{ "name": "bufw_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_46", "role": "q0" }} , 
 	{ "name": "bufw_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufw_47", "role": "address0" }} , 
 	{ "name": "bufw_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufw_47", "role": "ce0" }} , 
 	{ "name": "bufw_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufw_47", "role": "q0" }} , 
 	{ "name": "bufi_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_0", "role": "address0" }} , 
 	{ "name": "bufi_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_0", "role": "ce0" }} , 
 	{ "name": "bufi_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_0", "role": "q0" }} , 
 	{ "name": "bufi_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_1", "role": "address0" }} , 
 	{ "name": "bufi_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_1", "role": "ce0" }} , 
 	{ "name": "bufi_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_1", "role": "q0" }} , 
 	{ "name": "bufi_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_2", "role": "address0" }} , 
 	{ "name": "bufi_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_2", "role": "ce0" }} , 
 	{ "name": "bufi_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_2", "role": "q0" }} , 
 	{ "name": "bufi_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_3", "role": "address0" }} , 
 	{ "name": "bufi_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_3", "role": "ce0" }} , 
 	{ "name": "bufi_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_3", "role": "q0" }} , 
 	{ "name": "bufi_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_4", "role": "address0" }} , 
 	{ "name": "bufi_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_4", "role": "ce0" }} , 
 	{ "name": "bufi_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_4", "role": "q0" }} , 
 	{ "name": "bufi_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_5", "role": "address0" }} , 
 	{ "name": "bufi_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_5", "role": "ce0" }} , 
 	{ "name": "bufi_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_5", "role": "q0" }} , 
 	{ "name": "bufi_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_6", "role": "address0" }} , 
 	{ "name": "bufi_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_6", "role": "ce0" }} , 
 	{ "name": "bufi_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_6", "role": "q0" }} , 
 	{ "name": "bufi_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_7", "role": "address0" }} , 
 	{ "name": "bufi_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_7", "role": "ce0" }} , 
 	{ "name": "bufi_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_7", "role": "q0" }} , 
 	{ "name": "bufi_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_8", "role": "address0" }} , 
 	{ "name": "bufi_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_8", "role": "ce0" }} , 
 	{ "name": "bufi_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_8", "role": "q0" }} , 
 	{ "name": "bufi_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_9", "role": "address0" }} , 
 	{ "name": "bufi_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_9", "role": "ce0" }} , 
 	{ "name": "bufi_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_9", "role": "q0" }} , 
 	{ "name": "bufi_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_10", "role": "address0" }} , 
 	{ "name": "bufi_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_10", "role": "ce0" }} , 
 	{ "name": "bufi_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_10", "role": "q0" }} , 
 	{ "name": "bufi_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_11", "role": "address0" }} , 
 	{ "name": "bufi_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_11", "role": "ce0" }} , 
 	{ "name": "bufi_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_11", "role": "q0" }} , 
 	{ "name": "bufi_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_12", "role": "address0" }} , 
 	{ "name": "bufi_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_12", "role": "ce0" }} , 
 	{ "name": "bufi_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_12", "role": "q0" }} , 
 	{ "name": "bufi_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_13", "role": "address0" }} , 
 	{ "name": "bufi_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_13", "role": "ce0" }} , 
 	{ "name": "bufi_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_13", "role": "q0" }} , 
 	{ "name": "bufi_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_14", "role": "address0" }} , 
 	{ "name": "bufi_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_14", "role": "ce0" }} , 
 	{ "name": "bufi_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_14", "role": "q0" }} , 
 	{ "name": "bufi_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_15", "role": "address0" }} , 
 	{ "name": "bufi_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_15", "role": "ce0" }} , 
 	{ "name": "bufi_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_15", "role": "q0" }} , 
 	{ "name": "bufi_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_16", "role": "address0" }} , 
 	{ "name": "bufi_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_16", "role": "ce0" }} , 
 	{ "name": "bufi_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_16", "role": "q0" }} , 
 	{ "name": "bufi_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_17", "role": "address0" }} , 
 	{ "name": "bufi_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_17", "role": "ce0" }} , 
 	{ "name": "bufi_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_17", "role": "q0" }} , 
 	{ "name": "bufi_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_18", "role": "address0" }} , 
 	{ "name": "bufi_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_18", "role": "ce0" }} , 
 	{ "name": "bufi_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_18", "role": "q0" }} , 
 	{ "name": "bufi_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_19", "role": "address0" }} , 
 	{ "name": "bufi_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_19", "role": "ce0" }} , 
 	{ "name": "bufi_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_19", "role": "q0" }} , 
 	{ "name": "bufi_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_20", "role": "address0" }} , 
 	{ "name": "bufi_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_20", "role": "ce0" }} , 
 	{ "name": "bufi_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_20", "role": "q0" }} , 
 	{ "name": "bufi_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_21", "role": "address0" }} , 
 	{ "name": "bufi_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_21", "role": "ce0" }} , 
 	{ "name": "bufi_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_21", "role": "q0" }} , 
 	{ "name": "bufi_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_22", "role": "address0" }} , 
 	{ "name": "bufi_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_22", "role": "ce0" }} , 
 	{ "name": "bufi_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_22", "role": "q0" }} , 
 	{ "name": "bufi_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_23", "role": "address0" }} , 
 	{ "name": "bufi_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_23", "role": "ce0" }} , 
 	{ "name": "bufi_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_23", "role": "q0" }} , 
 	{ "name": "bufi_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_24", "role": "address0" }} , 
 	{ "name": "bufi_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_24", "role": "ce0" }} , 
 	{ "name": "bufi_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_24", "role": "q0" }} , 
 	{ "name": "bufi_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_25", "role": "address0" }} , 
 	{ "name": "bufi_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_25", "role": "ce0" }} , 
 	{ "name": "bufi_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_25", "role": "q0" }} , 
 	{ "name": "bufi_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_26", "role": "address0" }} , 
 	{ "name": "bufi_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_26", "role": "ce0" }} , 
 	{ "name": "bufi_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_26", "role": "q0" }} , 
 	{ "name": "bufi_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_27", "role": "address0" }} , 
 	{ "name": "bufi_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_27", "role": "ce0" }} , 
 	{ "name": "bufi_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_27", "role": "q0" }} , 
 	{ "name": "bufi_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_28", "role": "address0" }} , 
 	{ "name": "bufi_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_28", "role": "ce0" }} , 
 	{ "name": "bufi_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_28", "role": "q0" }} , 
 	{ "name": "bufi_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_29", "role": "address0" }} , 
 	{ "name": "bufi_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_29", "role": "ce0" }} , 
 	{ "name": "bufi_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_29", "role": "q0" }} , 
 	{ "name": "bufi_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_30", "role": "address0" }} , 
 	{ "name": "bufi_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_30", "role": "ce0" }} , 
 	{ "name": "bufi_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_30", "role": "q0" }} , 
 	{ "name": "bufi_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_31", "role": "address0" }} , 
 	{ "name": "bufi_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_31", "role": "ce0" }} , 
 	{ "name": "bufi_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_31", "role": "q0" }} , 
 	{ "name": "bufi_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_32", "role": "address0" }} , 
 	{ "name": "bufi_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_32", "role": "ce0" }} , 
 	{ "name": "bufi_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_32", "role": "q0" }} , 
 	{ "name": "bufi_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_33", "role": "address0" }} , 
 	{ "name": "bufi_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_33", "role": "ce0" }} , 
 	{ "name": "bufi_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_33", "role": "q0" }} , 
 	{ "name": "bufi_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_34", "role": "address0" }} , 
 	{ "name": "bufi_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_34", "role": "ce0" }} , 
 	{ "name": "bufi_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_34", "role": "q0" }} , 
 	{ "name": "bufi_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_35", "role": "address0" }} , 
 	{ "name": "bufi_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_35", "role": "ce0" }} , 
 	{ "name": "bufi_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_35", "role": "q0" }} , 
 	{ "name": "bufi_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_36", "role": "address0" }} , 
 	{ "name": "bufi_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_36", "role": "ce0" }} , 
 	{ "name": "bufi_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_36", "role": "q0" }} , 
 	{ "name": "bufi_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_37", "role": "address0" }} , 
 	{ "name": "bufi_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_37", "role": "ce0" }} , 
 	{ "name": "bufi_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_37", "role": "q0" }} , 
 	{ "name": "bufi_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_38", "role": "address0" }} , 
 	{ "name": "bufi_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_38", "role": "ce0" }} , 
 	{ "name": "bufi_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_38", "role": "q0" }} , 
 	{ "name": "bufi_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_39", "role": "address0" }} , 
 	{ "name": "bufi_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_39", "role": "ce0" }} , 
 	{ "name": "bufi_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_39", "role": "q0" }} , 
 	{ "name": "bufi_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_40", "role": "address0" }} , 
 	{ "name": "bufi_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_40", "role": "ce0" }} , 
 	{ "name": "bufi_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_40", "role": "q0" }} , 
 	{ "name": "bufi_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_41", "role": "address0" }} , 
 	{ "name": "bufi_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_41", "role": "ce0" }} , 
 	{ "name": "bufi_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_41", "role": "q0" }} , 
 	{ "name": "bufi_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_42", "role": "address0" }} , 
 	{ "name": "bufi_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_42", "role": "ce0" }} , 
 	{ "name": "bufi_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_42", "role": "q0" }} , 
 	{ "name": "bufi_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_43", "role": "address0" }} , 
 	{ "name": "bufi_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_43", "role": "ce0" }} , 
 	{ "name": "bufi_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_43", "role": "q0" }} , 
 	{ "name": "bufi_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_44", "role": "address0" }} , 
 	{ "name": "bufi_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_44", "role": "ce0" }} , 
 	{ "name": "bufi_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_44", "role": "q0" }} , 
 	{ "name": "bufi_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_45", "role": "address0" }} , 
 	{ "name": "bufi_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_45", "role": "ce0" }} , 
 	{ "name": "bufi_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_45", "role": "q0" }} , 
 	{ "name": "bufi_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_46", "role": "address0" }} , 
 	{ "name": "bufi_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_46", "role": "ce0" }} , 
 	{ "name": "bufi_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_46", "role": "q0" }} , 
 	{ "name": "bufi_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bufi_47", "role": "address0" }} , 
 	{ "name": "bufi_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufi_47", "role": "ce0" }} , 
 	{ "name": "bufi_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufi_47", "role": "q0" }} , 
 	{ "name": "bufo_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufo", "role": "address0" }} , 
 	{ "name": "bufo_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufo", "role": "ce0" }} , 
 	{ "name": "bufo_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufo", "role": "q0" }} , 
 	{ "name": "bufo_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufo", "role": "address1" }} , 
 	{ "name": "bufo_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufo", "role": "ce1" }} , 
 	{ "name": "bufo_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufo", "role": "we1" }} , 
 	{ "name": "bufo_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufo", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
		"CDFG" : "convolve_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1154460", "EstimateLatencyMax" : "1154460",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bufw_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufw_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufi_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufo", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U20", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U21", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U22", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U23", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U24", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U25", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U26", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U27", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U28", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U29", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U30", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U31", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U32", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U33", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U34", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U35", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U36", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U37", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U38", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U39", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U40", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U41", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U42", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U43", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U44", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U45", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U46", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U47", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U48", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fbkb_U49", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U50", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U51", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U52", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U53", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U54", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U55", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U56", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U57", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U58", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U59", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U60", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U61", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U62", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U63", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U64", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U65", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U66", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U67", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U68", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U69", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U70", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U71", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U72", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U73", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U74", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U75", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U76", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U77", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U78", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U79", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U80", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U81", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U82", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U83", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U84", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U85", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U86", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U87", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U88", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U89", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U90", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U91", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U92", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U93", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U94", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U95", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U96", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_fcud_U97", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mdEe_U98", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_meOg_U99", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mdEe_U100", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mfYi_U101", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mg8j_U102", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mhbi_U103", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mg8j_U104", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mhbi_U105", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mg8j_U106", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_kernel_mibs_U107", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolve_kernel {
		bufw_0 {Type I LastRead 10 FirstWrite -1}
		bufw_1 {Type I LastRead 15 FirstWrite -1}
		bufw_2 {Type I LastRead 20 FirstWrite -1}
		bufw_3 {Type I LastRead 25 FirstWrite -1}
		bufw_4 {Type I LastRead 30 FirstWrite -1}
		bufw_5 {Type I LastRead 35 FirstWrite -1}
		bufw_6 {Type I LastRead 40 FirstWrite -1}
		bufw_7 {Type I LastRead 45 FirstWrite -1}
		bufw_8 {Type I LastRead 50 FirstWrite -1}
		bufw_9 {Type I LastRead 55 FirstWrite -1}
		bufw_10 {Type I LastRead 60 FirstWrite -1}
		bufw_11 {Type I LastRead 65 FirstWrite -1}
		bufw_12 {Type I LastRead 70 FirstWrite -1}
		bufw_13 {Type I LastRead 75 FirstWrite -1}
		bufw_14 {Type I LastRead 80 FirstWrite -1}
		bufw_15 {Type I LastRead 85 FirstWrite -1}
		bufw_16 {Type I LastRead 90 FirstWrite -1}
		bufw_17 {Type I LastRead 95 FirstWrite -1}
		bufw_18 {Type I LastRead 100 FirstWrite -1}
		bufw_19 {Type I LastRead 105 FirstWrite -1}
		bufw_20 {Type I LastRead 110 FirstWrite -1}
		bufw_21 {Type I LastRead 115 FirstWrite -1}
		bufw_22 {Type I LastRead 120 FirstWrite -1}
		bufw_23 {Type I LastRead 125 FirstWrite -1}
		bufw_24 {Type I LastRead 130 FirstWrite -1}
		bufw_25 {Type I LastRead 135 FirstWrite -1}
		bufw_26 {Type I LastRead 140 FirstWrite -1}
		bufw_27 {Type I LastRead 145 FirstWrite -1}
		bufw_28 {Type I LastRead 150 FirstWrite -1}
		bufw_29 {Type I LastRead 155 FirstWrite -1}
		bufw_30 {Type I LastRead 160 FirstWrite -1}
		bufw_31 {Type I LastRead 165 FirstWrite -1}
		bufw_32 {Type I LastRead 170 FirstWrite -1}
		bufw_33 {Type I LastRead 175 FirstWrite -1}
		bufw_34 {Type I LastRead 180 FirstWrite -1}
		bufw_35 {Type I LastRead 185 FirstWrite -1}
		bufw_36 {Type I LastRead 190 FirstWrite -1}
		bufw_37 {Type I LastRead 195 FirstWrite -1}
		bufw_38 {Type I LastRead 200 FirstWrite -1}
		bufw_39 {Type I LastRead 205 FirstWrite -1}
		bufw_40 {Type I LastRead 210 FirstWrite -1}
		bufw_41 {Type I LastRead 215 FirstWrite -1}
		bufw_42 {Type I LastRead 220 FirstWrite -1}
		bufw_43 {Type I LastRead 225 FirstWrite -1}
		bufw_44 {Type I LastRead 230 FirstWrite -1}
		bufw_45 {Type I LastRead 235 FirstWrite -1}
		bufw_46 {Type I LastRead 240 FirstWrite -1}
		bufw_47 {Type I LastRead 245 FirstWrite -1}
		bufi_0 {Type I LastRead 10 FirstWrite -1}
		bufi_1 {Type I LastRead 15 FirstWrite -1}
		bufi_2 {Type I LastRead 20 FirstWrite -1}
		bufi_3 {Type I LastRead 25 FirstWrite -1}
		bufi_4 {Type I LastRead 30 FirstWrite -1}
		bufi_5 {Type I LastRead 35 FirstWrite -1}
		bufi_6 {Type I LastRead 40 FirstWrite -1}
		bufi_7 {Type I LastRead 45 FirstWrite -1}
		bufi_8 {Type I LastRead 50 FirstWrite -1}
		bufi_9 {Type I LastRead 55 FirstWrite -1}
		bufi_10 {Type I LastRead 60 FirstWrite -1}
		bufi_11 {Type I LastRead 65 FirstWrite -1}
		bufi_12 {Type I LastRead 70 FirstWrite -1}
		bufi_13 {Type I LastRead 75 FirstWrite -1}
		bufi_14 {Type I LastRead 80 FirstWrite -1}
		bufi_15 {Type I LastRead 85 FirstWrite -1}
		bufi_16 {Type I LastRead 90 FirstWrite -1}
		bufi_17 {Type I LastRead 95 FirstWrite -1}
		bufi_18 {Type I LastRead 100 FirstWrite -1}
		bufi_19 {Type I LastRead 105 FirstWrite -1}
		bufi_20 {Type I LastRead 110 FirstWrite -1}
		bufi_21 {Type I LastRead 115 FirstWrite -1}
		bufi_22 {Type I LastRead 120 FirstWrite -1}
		bufi_23 {Type I LastRead 125 FirstWrite -1}
		bufi_24 {Type I LastRead 130 FirstWrite -1}
		bufi_25 {Type I LastRead 135 FirstWrite -1}
		bufi_26 {Type I LastRead 140 FirstWrite -1}
		bufi_27 {Type I LastRead 145 FirstWrite -1}
		bufi_28 {Type I LastRead 150 FirstWrite -1}
		bufi_29 {Type I LastRead 155 FirstWrite -1}
		bufi_30 {Type I LastRead 160 FirstWrite -1}
		bufi_31 {Type I LastRead 165 FirstWrite -1}
		bufi_32 {Type I LastRead 170 FirstWrite -1}
		bufi_33 {Type I LastRead 175 FirstWrite -1}
		bufi_34 {Type I LastRead 180 FirstWrite -1}
		bufi_35 {Type I LastRead 185 FirstWrite -1}
		bufi_36 {Type I LastRead 190 FirstWrite -1}
		bufi_37 {Type I LastRead 195 FirstWrite -1}
		bufi_38 {Type I LastRead 200 FirstWrite -1}
		bufi_39 {Type I LastRead 205 FirstWrite -1}
		bufi_40 {Type I LastRead 210 FirstWrite -1}
		bufi_41 {Type I LastRead 215 FirstWrite -1}
		bufi_42 {Type I LastRead 220 FirstWrite -1}
		bufi_43 {Type I LastRead 225 FirstWrite -1}
		bufi_44 {Type I LastRead 230 FirstWrite -1}
		bufi_45 {Type I LastRead 235 FirstWrite -1}
		bufi_46 {Type I LastRead 240 FirstWrite -1}
		bufi_47 {Type I LastRead 245 FirstWrite -1}
		bufo {Type IO LastRead 253 FirstWrite 252}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1154460", "Max" : "1154460"}
	, {"Name" : "Interval", "Min" : "1154461", "Max" : "1154461"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
]}

set Spec2ImplPortList { 
	bufw_0 { ap_memory {  { bufw_0_address0 mem_address 1 11 }  { bufw_0_ce0 mem_ce 1 1 }  { bufw_0_q0 mem_dout 0 32 } } }
	bufw_1 { ap_memory {  { bufw_1_address0 mem_address 1 11 }  { bufw_1_ce0 mem_ce 1 1 }  { bufw_1_q0 mem_dout 0 32 } } }
	bufw_2 { ap_memory {  { bufw_2_address0 mem_address 1 11 }  { bufw_2_ce0 mem_ce 1 1 }  { bufw_2_q0 mem_dout 0 32 } } }
	bufw_3 { ap_memory {  { bufw_3_address0 mem_address 1 11 }  { bufw_3_ce0 mem_ce 1 1 }  { bufw_3_q0 mem_dout 0 32 } } }
	bufw_4 { ap_memory {  { bufw_4_address0 mem_address 1 11 }  { bufw_4_ce0 mem_ce 1 1 }  { bufw_4_q0 mem_dout 0 32 } } }
	bufw_5 { ap_memory {  { bufw_5_address0 mem_address 1 11 }  { bufw_5_ce0 mem_ce 1 1 }  { bufw_5_q0 mem_dout 0 32 } } }
	bufw_6 { ap_memory {  { bufw_6_address0 mem_address 1 11 }  { bufw_6_ce0 mem_ce 1 1 }  { bufw_6_q0 mem_dout 0 32 } } }
	bufw_7 { ap_memory {  { bufw_7_address0 mem_address 1 11 }  { bufw_7_ce0 mem_ce 1 1 }  { bufw_7_q0 mem_dout 0 32 } } }
	bufw_8 { ap_memory {  { bufw_8_address0 mem_address 1 11 }  { bufw_8_ce0 mem_ce 1 1 }  { bufw_8_q0 mem_dout 0 32 } } }
	bufw_9 { ap_memory {  { bufw_9_address0 mem_address 1 11 }  { bufw_9_ce0 mem_ce 1 1 }  { bufw_9_q0 mem_dout 0 32 } } }
	bufw_10 { ap_memory {  { bufw_10_address0 mem_address 1 11 }  { bufw_10_ce0 mem_ce 1 1 }  { bufw_10_q0 mem_dout 0 32 } } }
	bufw_11 { ap_memory {  { bufw_11_address0 mem_address 1 11 }  { bufw_11_ce0 mem_ce 1 1 }  { bufw_11_q0 mem_dout 0 32 } } }
	bufw_12 { ap_memory {  { bufw_12_address0 mem_address 1 11 }  { bufw_12_ce0 mem_ce 1 1 }  { bufw_12_q0 mem_dout 0 32 } } }
	bufw_13 { ap_memory {  { bufw_13_address0 mem_address 1 11 }  { bufw_13_ce0 mem_ce 1 1 }  { bufw_13_q0 mem_dout 0 32 } } }
	bufw_14 { ap_memory {  { bufw_14_address0 mem_address 1 11 }  { bufw_14_ce0 mem_ce 1 1 }  { bufw_14_q0 mem_dout 0 32 } } }
	bufw_15 { ap_memory {  { bufw_15_address0 mem_address 1 11 }  { bufw_15_ce0 mem_ce 1 1 }  { bufw_15_q0 mem_dout 0 32 } } }
	bufw_16 { ap_memory {  { bufw_16_address0 mem_address 1 11 }  { bufw_16_ce0 mem_ce 1 1 }  { bufw_16_q0 mem_dout 0 32 } } }
	bufw_17 { ap_memory {  { bufw_17_address0 mem_address 1 11 }  { bufw_17_ce0 mem_ce 1 1 }  { bufw_17_q0 mem_dout 0 32 } } }
	bufw_18 { ap_memory {  { bufw_18_address0 mem_address 1 11 }  { bufw_18_ce0 mem_ce 1 1 }  { bufw_18_q0 mem_dout 0 32 } } }
	bufw_19 { ap_memory {  { bufw_19_address0 mem_address 1 11 }  { bufw_19_ce0 mem_ce 1 1 }  { bufw_19_q0 mem_dout 0 32 } } }
	bufw_20 { ap_memory {  { bufw_20_address0 mem_address 1 11 }  { bufw_20_ce0 mem_ce 1 1 }  { bufw_20_q0 mem_dout 0 32 } } }
	bufw_21 { ap_memory {  { bufw_21_address0 mem_address 1 11 }  { bufw_21_ce0 mem_ce 1 1 }  { bufw_21_q0 mem_dout 0 32 } } }
	bufw_22 { ap_memory {  { bufw_22_address0 mem_address 1 11 }  { bufw_22_ce0 mem_ce 1 1 }  { bufw_22_q0 mem_dout 0 32 } } }
	bufw_23 { ap_memory {  { bufw_23_address0 mem_address 1 11 }  { bufw_23_ce0 mem_ce 1 1 }  { bufw_23_q0 mem_dout 0 32 } } }
	bufw_24 { ap_memory {  { bufw_24_address0 mem_address 1 11 }  { bufw_24_ce0 mem_ce 1 1 }  { bufw_24_q0 mem_dout 0 32 } } }
	bufw_25 { ap_memory {  { bufw_25_address0 mem_address 1 11 }  { bufw_25_ce0 mem_ce 1 1 }  { bufw_25_q0 mem_dout 0 32 } } }
	bufw_26 { ap_memory {  { bufw_26_address0 mem_address 1 11 }  { bufw_26_ce0 mem_ce 1 1 }  { bufw_26_q0 mem_dout 0 32 } } }
	bufw_27 { ap_memory {  { bufw_27_address0 mem_address 1 11 }  { bufw_27_ce0 mem_ce 1 1 }  { bufw_27_q0 mem_dout 0 32 } } }
	bufw_28 { ap_memory {  { bufw_28_address0 mem_address 1 11 }  { bufw_28_ce0 mem_ce 1 1 }  { bufw_28_q0 mem_dout 0 32 } } }
	bufw_29 { ap_memory {  { bufw_29_address0 mem_address 1 11 }  { bufw_29_ce0 mem_ce 1 1 }  { bufw_29_q0 mem_dout 0 32 } } }
	bufw_30 { ap_memory {  { bufw_30_address0 mem_address 1 11 }  { bufw_30_ce0 mem_ce 1 1 }  { bufw_30_q0 mem_dout 0 32 } } }
	bufw_31 { ap_memory {  { bufw_31_address0 mem_address 1 11 }  { bufw_31_ce0 mem_ce 1 1 }  { bufw_31_q0 mem_dout 0 32 } } }
	bufw_32 { ap_memory {  { bufw_32_address0 mem_address 1 11 }  { bufw_32_ce0 mem_ce 1 1 }  { bufw_32_q0 mem_dout 0 32 } } }
	bufw_33 { ap_memory {  { bufw_33_address0 mem_address 1 11 }  { bufw_33_ce0 mem_ce 1 1 }  { bufw_33_q0 mem_dout 0 32 } } }
	bufw_34 { ap_memory {  { bufw_34_address0 mem_address 1 11 }  { bufw_34_ce0 mem_ce 1 1 }  { bufw_34_q0 mem_dout 0 32 } } }
	bufw_35 { ap_memory {  { bufw_35_address0 mem_address 1 11 }  { bufw_35_ce0 mem_ce 1 1 }  { bufw_35_q0 mem_dout 0 32 } } }
	bufw_36 { ap_memory {  { bufw_36_address0 mem_address 1 11 }  { bufw_36_ce0 mem_ce 1 1 }  { bufw_36_q0 mem_dout 0 32 } } }
	bufw_37 { ap_memory {  { bufw_37_address0 mem_address 1 11 }  { bufw_37_ce0 mem_ce 1 1 }  { bufw_37_q0 mem_dout 0 32 } } }
	bufw_38 { ap_memory {  { bufw_38_address0 mem_address 1 11 }  { bufw_38_ce0 mem_ce 1 1 }  { bufw_38_q0 mem_dout 0 32 } } }
	bufw_39 { ap_memory {  { bufw_39_address0 mem_address 1 11 }  { bufw_39_ce0 mem_ce 1 1 }  { bufw_39_q0 mem_dout 0 32 } } }
	bufw_40 { ap_memory {  { bufw_40_address0 mem_address 1 11 }  { bufw_40_ce0 mem_ce 1 1 }  { bufw_40_q0 mem_dout 0 32 } } }
	bufw_41 { ap_memory {  { bufw_41_address0 mem_address 1 11 }  { bufw_41_ce0 mem_ce 1 1 }  { bufw_41_q0 mem_dout 0 32 } } }
	bufw_42 { ap_memory {  { bufw_42_address0 mem_address 1 11 }  { bufw_42_ce0 mem_ce 1 1 }  { bufw_42_q0 mem_dout 0 32 } } }
	bufw_43 { ap_memory {  { bufw_43_address0 mem_address 1 11 }  { bufw_43_ce0 mem_ce 1 1 }  { bufw_43_q0 mem_dout 0 32 } } }
	bufw_44 { ap_memory {  { bufw_44_address0 mem_address 1 11 }  { bufw_44_ce0 mem_ce 1 1 }  { bufw_44_q0 mem_dout 0 32 } } }
	bufw_45 { ap_memory {  { bufw_45_address0 mem_address 1 11 }  { bufw_45_ce0 mem_ce 1 1 }  { bufw_45_q0 mem_dout 0 32 } } }
	bufw_46 { ap_memory {  { bufw_46_address0 mem_address 1 11 }  { bufw_46_ce0 mem_ce 1 1 }  { bufw_46_q0 mem_dout 0 32 } } }
	bufw_47 { ap_memory {  { bufw_47_address0 mem_address 1 11 }  { bufw_47_ce0 mem_ce 1 1 }  { bufw_47_q0 mem_dout 0 32 } } }
	bufi_0 { ap_memory {  { bufi_0_address0 mem_address 1 11 }  { bufi_0_ce0 mem_ce 1 1 }  { bufi_0_q0 mem_dout 0 32 } } }
	bufi_1 { ap_memory {  { bufi_1_address0 mem_address 1 11 }  { bufi_1_ce0 mem_ce 1 1 }  { bufi_1_q0 mem_dout 0 32 } } }
	bufi_2 { ap_memory {  { bufi_2_address0 mem_address 1 11 }  { bufi_2_ce0 mem_ce 1 1 }  { bufi_2_q0 mem_dout 0 32 } } }
	bufi_3 { ap_memory {  { bufi_3_address0 mem_address 1 11 }  { bufi_3_ce0 mem_ce 1 1 }  { bufi_3_q0 mem_dout 0 32 } } }
	bufi_4 { ap_memory {  { bufi_4_address0 mem_address 1 11 }  { bufi_4_ce0 mem_ce 1 1 }  { bufi_4_q0 mem_dout 0 32 } } }
	bufi_5 { ap_memory {  { bufi_5_address0 mem_address 1 11 }  { bufi_5_ce0 mem_ce 1 1 }  { bufi_5_q0 mem_dout 0 32 } } }
	bufi_6 { ap_memory {  { bufi_6_address0 mem_address 1 11 }  { bufi_6_ce0 mem_ce 1 1 }  { bufi_6_q0 mem_dout 0 32 } } }
	bufi_7 { ap_memory {  { bufi_7_address0 mem_address 1 11 }  { bufi_7_ce0 mem_ce 1 1 }  { bufi_7_q0 mem_dout 0 32 } } }
	bufi_8 { ap_memory {  { bufi_8_address0 mem_address 1 11 }  { bufi_8_ce0 mem_ce 1 1 }  { bufi_8_q0 mem_dout 0 32 } } }
	bufi_9 { ap_memory {  { bufi_9_address0 mem_address 1 11 }  { bufi_9_ce0 mem_ce 1 1 }  { bufi_9_q0 mem_dout 0 32 } } }
	bufi_10 { ap_memory {  { bufi_10_address0 mem_address 1 11 }  { bufi_10_ce0 mem_ce 1 1 }  { bufi_10_q0 mem_dout 0 32 } } }
	bufi_11 { ap_memory {  { bufi_11_address0 mem_address 1 11 }  { bufi_11_ce0 mem_ce 1 1 }  { bufi_11_q0 mem_dout 0 32 } } }
	bufi_12 { ap_memory {  { bufi_12_address0 mem_address 1 11 }  { bufi_12_ce0 mem_ce 1 1 }  { bufi_12_q0 mem_dout 0 32 } } }
	bufi_13 { ap_memory {  { bufi_13_address0 mem_address 1 11 }  { bufi_13_ce0 mem_ce 1 1 }  { bufi_13_q0 mem_dout 0 32 } } }
	bufi_14 { ap_memory {  { bufi_14_address0 mem_address 1 11 }  { bufi_14_ce0 mem_ce 1 1 }  { bufi_14_q0 mem_dout 0 32 } } }
	bufi_15 { ap_memory {  { bufi_15_address0 mem_address 1 11 }  { bufi_15_ce0 mem_ce 1 1 }  { bufi_15_q0 mem_dout 0 32 } } }
	bufi_16 { ap_memory {  { bufi_16_address0 mem_address 1 11 }  { bufi_16_ce0 mem_ce 1 1 }  { bufi_16_q0 mem_dout 0 32 } } }
	bufi_17 { ap_memory {  { bufi_17_address0 mem_address 1 11 }  { bufi_17_ce0 mem_ce 1 1 }  { bufi_17_q0 mem_dout 0 32 } } }
	bufi_18 { ap_memory {  { bufi_18_address0 mem_address 1 11 }  { bufi_18_ce0 mem_ce 1 1 }  { bufi_18_q0 mem_dout 0 32 } } }
	bufi_19 { ap_memory {  { bufi_19_address0 mem_address 1 11 }  { bufi_19_ce0 mem_ce 1 1 }  { bufi_19_q0 mem_dout 0 32 } } }
	bufi_20 { ap_memory {  { bufi_20_address0 mem_address 1 11 }  { bufi_20_ce0 mem_ce 1 1 }  { bufi_20_q0 mem_dout 0 32 } } }
	bufi_21 { ap_memory {  { bufi_21_address0 mem_address 1 11 }  { bufi_21_ce0 mem_ce 1 1 }  { bufi_21_q0 mem_dout 0 32 } } }
	bufi_22 { ap_memory {  { bufi_22_address0 mem_address 1 11 }  { bufi_22_ce0 mem_ce 1 1 }  { bufi_22_q0 mem_dout 0 32 } } }
	bufi_23 { ap_memory {  { bufi_23_address0 mem_address 1 11 }  { bufi_23_ce0 mem_ce 1 1 }  { bufi_23_q0 mem_dout 0 32 } } }
	bufi_24 { ap_memory {  { bufi_24_address0 mem_address 1 11 }  { bufi_24_ce0 mem_ce 1 1 }  { bufi_24_q0 mem_dout 0 32 } } }
	bufi_25 { ap_memory {  { bufi_25_address0 mem_address 1 11 }  { bufi_25_ce0 mem_ce 1 1 }  { bufi_25_q0 mem_dout 0 32 } } }
	bufi_26 { ap_memory {  { bufi_26_address0 mem_address 1 11 }  { bufi_26_ce0 mem_ce 1 1 }  { bufi_26_q0 mem_dout 0 32 } } }
	bufi_27 { ap_memory {  { bufi_27_address0 mem_address 1 11 }  { bufi_27_ce0 mem_ce 1 1 }  { bufi_27_q0 mem_dout 0 32 } } }
	bufi_28 { ap_memory {  { bufi_28_address0 mem_address 1 11 }  { bufi_28_ce0 mem_ce 1 1 }  { bufi_28_q0 mem_dout 0 32 } } }
	bufi_29 { ap_memory {  { bufi_29_address0 mem_address 1 11 }  { bufi_29_ce0 mem_ce 1 1 }  { bufi_29_q0 mem_dout 0 32 } } }
	bufi_30 { ap_memory {  { bufi_30_address0 mem_address 1 11 }  { bufi_30_ce0 mem_ce 1 1 }  { bufi_30_q0 mem_dout 0 32 } } }
	bufi_31 { ap_memory {  { bufi_31_address0 mem_address 1 11 }  { bufi_31_ce0 mem_ce 1 1 }  { bufi_31_q0 mem_dout 0 32 } } }
	bufi_32 { ap_memory {  { bufi_32_address0 mem_address 1 11 }  { bufi_32_ce0 mem_ce 1 1 }  { bufi_32_q0 mem_dout 0 32 } } }
	bufi_33 { ap_memory {  { bufi_33_address0 mem_address 1 11 }  { bufi_33_ce0 mem_ce 1 1 }  { bufi_33_q0 mem_dout 0 32 } } }
	bufi_34 { ap_memory {  { bufi_34_address0 mem_address 1 11 }  { bufi_34_ce0 mem_ce 1 1 }  { bufi_34_q0 mem_dout 0 32 } } }
	bufi_35 { ap_memory {  { bufi_35_address0 mem_address 1 11 }  { bufi_35_ce0 mem_ce 1 1 }  { bufi_35_q0 mem_dout 0 32 } } }
	bufi_36 { ap_memory {  { bufi_36_address0 mem_address 1 11 }  { bufi_36_ce0 mem_ce 1 1 }  { bufi_36_q0 mem_dout 0 32 } } }
	bufi_37 { ap_memory {  { bufi_37_address0 mem_address 1 11 }  { bufi_37_ce0 mem_ce 1 1 }  { bufi_37_q0 mem_dout 0 32 } } }
	bufi_38 { ap_memory {  { bufi_38_address0 mem_address 1 11 }  { bufi_38_ce0 mem_ce 1 1 }  { bufi_38_q0 mem_dout 0 32 } } }
	bufi_39 { ap_memory {  { bufi_39_address0 mem_address 1 11 }  { bufi_39_ce0 mem_ce 1 1 }  { bufi_39_q0 mem_dout 0 32 } } }
	bufi_40 { ap_memory {  { bufi_40_address0 mem_address 1 11 }  { bufi_40_ce0 mem_ce 1 1 }  { bufi_40_q0 mem_dout 0 32 } } }
	bufi_41 { ap_memory {  { bufi_41_address0 mem_address 1 11 }  { bufi_41_ce0 mem_ce 1 1 }  { bufi_41_q0 mem_dout 0 32 } } }
	bufi_42 { ap_memory {  { bufi_42_address0 mem_address 1 11 }  { bufi_42_ce0 mem_ce 1 1 }  { bufi_42_q0 mem_dout 0 32 } } }
	bufi_43 { ap_memory {  { bufi_43_address0 mem_address 1 11 }  { bufi_43_ce0 mem_ce 1 1 }  { bufi_43_q0 mem_dout 0 32 } } }
	bufi_44 { ap_memory {  { bufi_44_address0 mem_address 1 11 }  { bufi_44_ce0 mem_ce 1 1 }  { bufi_44_q0 mem_dout 0 32 } } }
	bufi_45 { ap_memory {  { bufi_45_address0 mem_address 1 11 }  { bufi_45_ce0 mem_ce 1 1 }  { bufi_45_q0 mem_dout 0 32 } } }
	bufi_46 { ap_memory {  { bufi_46_address0 mem_address 1 11 }  { bufi_46_ce0 mem_ce 1 1 }  { bufi_46_q0 mem_dout 0 32 } } }
	bufi_47 { ap_memory {  { bufi_47_address0 mem_address 1 11 }  { bufi_47_ce0 mem_ce 1 1 }  { bufi_47_q0 mem_dout 0 32 } } }
	bufo { ap_memory {  { bufo_address0 mem_address 1 16 }  { bufo_ce0 mem_ce 1 1 }  { bufo_q0 mem_dout 0 32 }  { bufo_address1 MemPortADDR2 1 16 }  { bufo_ce1 MemPortCE2 1 1 }  { bufo_we1 MemPortWE2 1 1 }  { bufo_d1 MemPortDIN2 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
