#define DEBUG_MODE_FULL

#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE fn_preInit.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
enableSaving [false,false];
missionNamespace setVariable ["boxes",[]];
["Preload"] call BIS_fnc_arsenal;
ALEF_forcerespawn = false;
CP_defaultGroups = ["=15BN="];
LOG("End");
