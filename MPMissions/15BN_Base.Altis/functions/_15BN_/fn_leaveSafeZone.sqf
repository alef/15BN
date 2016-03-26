#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_leaveSafeZone.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
player removeEventHandler ["Fired", safeZone_EH];
player removeAction arsenal_ID;
LOG("End");

