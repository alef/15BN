#define DEBUG_MODE_FULL

/*
	Description:
	Save and overwrites any arsenal template having name starting with [=15BN=].
	It loops over the group ALEF_15BN_equipaggiamenti and saves each inventory.

	See fn_arsenal.sqf:2201 for data format

	Parameter(s):
	None required.
	
	Example:
	Node. It's called as postInit.

	Returns:
	Nothing
*/

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_saveTemplates.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
params ["_postInit", "_didJIP"];

if (local player) then {
	// removes templates from old versions
	[player, [profilenamespace, "[=15BN=] Lanciagranate"], [], true] call BIS_fnc_saveInventory;

	{ [_x, [profileNamespace, _x getVariable "ALEF_15BN_equipaggiamento"]] call BIS_fnc_saveInventory;
	} forEach units ALEF_15BN_equipaggiamenti;

	saveProfileNamespace;
};
LOG("End");
