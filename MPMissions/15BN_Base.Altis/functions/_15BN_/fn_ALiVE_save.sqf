#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_ALiVE_save.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
["ALIVE_SYS_PROFILE","ALIVE_MIL_OPCOM","ALIVE_AMB_CIV_POPULATION","ALIVE_MIL_LOGISTICS","ALIVE_SYS_AISKILL"] call ALiVE_fnc_pauseModule;
if (["ALiVE_sys_profile"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_profilesSaveData;
	TRACE_1("ALiVE_sys_profile: ", _result);
};
if (["ALiVE_mil_OPCOM"] call ALiVE_fnc_isModuleAvailable) then {
	_results = [] call ALiVE_fnc_OPCOMSaveData;
	TRACE_1("ALiVE_mil_OPCOM: ", _result);
};
if (["ALiVE_mil_cqb"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_CQBSaveData;
	TRACE_1("ALiVE_mil_cqb: ", _result);
};
if (["ALiVE_sys_logistics"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_logisticsSaveData;
	TRACE_1("ALiVE_mil_logistics: ", _result);
};
if (["ALiVE_sys_marker"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_markerSaveData;
	TRACE_1("ALiVE_sys_marker", _result);
};
if (["ALiVE_sys_spotrep"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_spotrepSaveData;
	TRACE_1("ALiVE_sys_spotrep", _result);
};
if (["ALiVE_sys_sitrep"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_sitrepSaveData;
	TRACE_1("ALiVE_sys_sitrepm", _result);
};
if (["ALiVE_sys_patrolrep"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_patrolrepSaveData;
	TRACE_1("ALiVE_sys_patrolrep", _result);
};
if (["ALiVE_mil_logistics"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_MLSaveData;
	TRACE_1("ALiVE_mil_logistics", _result);
};
if (["ALiVE_mil_C2ISTAR"] call ALiVE_fnc_isModuleAvailable) then {
	_result = [] call ALiVE_fnc_taskHandlerSaveData;
	TRACE_1("ALiVE_mil_C2ISTAR", _result);
};
["ALIVE_AMB_CIV_POPULATION","ALIVE_MIL_LOGISTICS","ALIVE_SYS_AISKILL"] call ALiVE_fnc_unPauseModule;
LOG("End");
