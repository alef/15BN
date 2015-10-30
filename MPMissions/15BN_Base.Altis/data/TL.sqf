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
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 5 do {this addItemToUniform "SmokeShell";};
this addVest "V_HarnessOGL_brn";
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 3 do {this addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {this addItemToVest "16Rnd_9x21_Mag";};
this addItemToVest "SmokeShellRed";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {this addItemToVest "3Rnd_Smoke_Grenade_shell";};
this addBackpack "B_AssaultPack_mcamo";
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_fieldDressing";};
this addItemToBackpack "ACRE_PRC148";
this addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 6 do {this addItemToBackpack "3Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {this addItemToBackpack "30Rnd_65x39_caseless_mag";};
this addHeadgear "H_HelmetB";

comment "Add weapons";
this addWeapon "arifle_MX_GL_F";
this addPrimaryWeaponItem "muzzle_snds_H";
this addPrimaryWeaponItem "acc_flashlight";
this addPrimaryWeaponItem "optic_Hamr";
this addWeapon "hgun_P07_F";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ACE_Altimeter";
this linkItem "ItemGPS";
this linkItem "ACE_NVG_Wide";

comment "Set identity";
this setSpeaker "ACE_NoVoice";
