/*
	Description:
	Load a gear base on unit class

	Parameter(s):
		0: unit

	Example:
		player call ALEF_fnc_spawn_loadout

	Returns:
		Nothing

*/
#define DEBUG_MODE_FULL
#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_spawn_loadout.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
[ _this,
	[profilenamespace, "[=15BN=] " + (switch (typeOf _this) do {
	case "B_Soldier_SL_F": {"TL"};
	case "B_soldier_AR_F"; 
	case "B_soldier_AAR_F": {"Mitragliere"};
	case "B_soldier_AT_F";
	case "B_soldier_AAT_F": {"AntiTank"};
	case "B_medic_F": {"Medico"};
	case "B_Soldier_A_F";
	case "B_Soldier_F";
	default {"Fuciliere"};
})]] call BIS_fnc_loadInventory;
LOG("End");
