#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_fillBox.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

private ["_box"];
_box = _this;
if (isServer) then
{
	clearWeaponCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	if (typeOf _box == "O_supplyCraft_F") then {
		// CSAT
		_box addItemCargoGlobal ["150Rnd_762x54_Box", 10];
		_box addItemCargoGlobal ["30Rnd_65x39_caseless_green", 10];
		_box addItemCargoGlobal ["150Rnd_762x54_Box", 10];
	} else {
		_box addItemCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 10];
	};
	_box addItemCargoGlobal ["ACRE_PRC343",  4];
	_box addItemCargoGlobal ["ACRE_PRC148",  2];
	_box addItemCargoGlobal ["ACRE_PRC152",  2];
	_box addItemCargoGlobal ["ACRE_PRC117F", 2];
	_box addItemCargoGlobal ["ACRE_PRC77",   2];
	_box addItemCargoGlobal ["ACE_EarPlugs",  8]; 
	_box addItemCargoGlobal ["MCC_multiTool", 8];
};
