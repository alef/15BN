comment "Exported from Arsenal by alef";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "U_B_CombatUniform_mcam";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {this addItemToUniform "SmokeShell";};
this addVest "V_HarnessO_gry";
this addItemToVest "ACRE_PRC343";
this addItemToVest "SmokeShellRed";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 6 do {this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 3 do {this addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {this addItemToVest "16Rnd_9x21_Mag";};
this addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_fieldDressing";};
this addItemToBackpack "ACE_epinephrine";
this addItemToBackpack "Titan_AA";
this addWeapon "launch_B_Titan_F";
for "_i" from 1 to 2 do {this addItemToBackpack "Titan_AA";};
this addHeadgear "H_HelmetB";

comment "Add weapons";
this addWeapon "arifle_MX_F";
this addPrimaryWeaponItem "muzzle_snds_H";
this addPrimaryWeaponItem "acc_flashlight";
this addPrimaryWeaponItem "optic_Hamr";
this addPrimaryWeaponItem "bipod_01_F_snd";
this addWeapon "hgun_P07_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ACE_Altimeter";
this linkItem "ItemGPS";
this linkItem "ACE_NVG_Wide";

comment "Set identity";
this setSpeaker "ACE_NoVoice";

