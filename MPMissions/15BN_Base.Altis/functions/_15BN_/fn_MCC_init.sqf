#define DEBUG_MODE_FULL
#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_MCC_init.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"
LOG("Begin");
waitUntil { if (isNil "MCC_initDone") exitWith {false}; MCC_initDone };
MCC_openRespawnMenu = false;
MCC_groupMarkers = false;
MCC_allowSquadDialogCamera = false;
MCC_syncOn = true;
MCC_t2tIndex = 0;
MCC_medicSystemEnabled = false;
HW_Arti_CannonNumber = 6;
MCC_faction_index = 7; // RHS MSV
LOG("End");
