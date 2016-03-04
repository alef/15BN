#define DEBUG_MODE_FULL

#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE fn_preInit.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
missionNamespace setVariable ["boxes",[]];
missionNamespace setVariable ["m1025s",[]];
["Preload"] call BIS_fnc_arsenal;
CP_defaultGroups = ["=15BN="];
initializedClasses = [];
LOG("End");
