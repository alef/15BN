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
	[_this,
		[
			["MCC_multiTool","ACE_packingBandage","ACE_morphine","ACE_microDAGR","ACE_CableTie","ACE_EarPlugs"],
			[5,50,20,5,5,5]
		],
		[
			["rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m67","rhs_mag_an_m8hc","rhs_mag_m18_green","rhs_mag_m18_red","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk262_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhsusf_200Rnd_556x45_soft_pouch","rhsusf_100Rnd_762x51_m80a1epr"],
			[30,30,15,15,5,5,15,15,15,5,5]
		],
		[
			["ACRE_PRC77"],
			[1]
		],
		[[],[]]
	] remoteExec ["MCC_fnc_boxGenerator",_this,false];
};
LOG("End");
