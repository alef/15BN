#define DEBUG_MODE_FULL
#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE initServer.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"
LOG("Begin");
if (isMultiplayer) then {
	0=0 spawn { while {true} do { sleep 30 ; call  ALEF_fnc_medicsAvailable; };};
};

{ _x call ALEF_fnc_fillBox; } forEach boxes;
{ _x call ALEF_fnc_M1025; } forEach m1025s;

LOG("End");

