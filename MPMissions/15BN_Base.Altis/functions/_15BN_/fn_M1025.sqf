#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_M1025.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
comment "by AleDamy93";
if (isServer) then {
	clearMagazineCargoGlobal _this;
	clearWeaponCargoGlobal _this;
	clearItemCargoGlobal _this;
	clearBackpackCargoGlobal _this;
	_this addItemCargoGlobal ["ACE_packingBandage", 50];
	_this addItemCargoGlobal ["ACE_morphine", 20];
	_this addItemCargoGlobal ["ACE_microDAGR", 5];
	_this addItemCargoGlobal ["ACE_CableTie", 5];
	_this addItemCargoGlobal ["ACE_EarPlugs", 5];
	_this addItemCargoGlobal ["alive_tablet", 5];
	_this addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 30];
	_this addMagazineCargoGlobal ["rhs_mag_m714_White", 30];
	_this addMagazineCargoGlobal ["rhs_mag_m67", 15];
	_this addMagazineCargoGlobal ["rhs_mag_an_m8hc", 15];
	_this addMagazineCargoGlobal ["rhs_mag_m18_green", 5];
	_this addMagazineCargoGlobal ["rhs_mag_m18_red", 5];
	_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 15];
	_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 15];
	_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 15];
	_this addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch", 5];
	_this addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m80a1epr", 5];
	_this addItemCargoGlobal ["ACRE_PRC77", 1];
};
LOG("End");
