#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_ALiVE_unpause.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
["ALIVE_SYS_PROFILE","ALIVE_MIL_OPCOM","ALIVE_MIL_LOGISTICS"] call ALiVE_fnc_unPauseModule;
LOG("End");
