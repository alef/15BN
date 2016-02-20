#define DEBUG_MODE_FULL

/*
	Description:
	Save and overwrites any arsenal template having name starting with a prefix.
	It loops over CfgRespawnInventory, create a unit and call the
	respawn menu on it. This is needed because the inventories in respawn and
	Arsenal have different data formats.

	Parameter(s):
	0: BOOL - load from config
		true: (default) load from CfgRespawnInventory
		false: load from data/name_in_CfgRespawnInventory.sqf
	
	Example:

	Returns:
	Nothing
*/

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_saveTemplates.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

// see fn_arsenal.sqf:2201 for data format
LOG("Begin");
private ["_u","_i","_cname","_fromConfig"];
_fromConfig = param [0, false, [true]];

// loop over the configured inventories
_u = "Underwear_F" createVehicleLocal [8460, 25080];
{
	removeAllWeapons _u; removeAllItems _u; removeAllAssignedItems _u; 
	removeUniform _u; removeVest _u; removeBackpack _u; 
	removeHeadgear _u; removeGoggles _u;
	_cname = configName _x ;
	_name = "[=15BN=] "+_cname;
	if (_fromConfig) then {
		[_u, _x] call BIS_fnc_loadInventory;
	} else {
		private ["_h","_code"];
		_code = compile loadFile ("data\" + _cname + ".sqf");
		this = _u ;
		[] call _code;
		this = nil;
	};
	[_u, [profilenamespace, _name]] call BIS_fnc_deleteInventory; // delete player's Arsenal slot
	[_u, [profilenamespace, _name]] call BIS_fnc_saveInventory; // save into player's Arsenal slot
} forEach ([(missionConfigFile >> "CfgRespawnInventory"), 0, true] call BIS_fnc_returnChildren);

// removes templates from old versions
[_u, [profilenamespace, "[=15BN=] Lanciagranate"], [], true] call BIS_fnc_saveInventory;

saveProfileNamespace;

deleteVehicle _u;
LOG("End");
