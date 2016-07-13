#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_enterSafeZone.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
// Removes fired object as they leave weapons
// Doesn't work for vehicles other than players
safeZone_EH = player addEventHandler [
	"Fired",
	{ deleteVehicle (_this select 6); hint "Auguri Marvin!"; }
];
arsenal_ID = player addAction ['<t color=''#218936''>Arsenale Virtuale</t>', '["Open",true] call BIS_fnc_arsenal',
	nil, 1.5, false];
LOG("End");
