#define DEBUG_MODE_FULL
#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE initServer.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"
LOG("Begin");
if (isMultiplayer) then {
	0=0 spawn { while {true} do { sleep 30 ; call  ALEF_fnc_medicsAvailable; };};
};

// ["ALEF_ALiVE_save", "onPlayerDisconnected", {
// 	if (count allPlayers == 0) then {
// 		[] call ALEF_fnc_ALiVE_save;
// 	};
// }] call BIS_fnc_addStackedEventhandler;

waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};
serverChat globalChat "ALiVE Static Data Loaded";

// [] call ALEF_fnc_ALiVE_pause;

diag_log "ALiVE Static Data Loaded";

LOG("End");

