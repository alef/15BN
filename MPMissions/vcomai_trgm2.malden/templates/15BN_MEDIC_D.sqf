comment "Exported from Arsenal by Nerone";

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
this forceAddUniform "rhs_uniform_FROG01_d";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "11Rnd_45ACP_Mag";
this addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";
this addVest "rhsusf_spc_iar";
for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 6 do {this addItemToVest "SmokeShellRed";};
for "_i" from 1 to 4 do {this addItemToVest "SmokeShell";};
this addBackpack "B_Carryall_ocamo";
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {this addItemToBackpack "ACE_bloodIV";};
this addHeadgear "rhsusf_opscore_bk_pelt";
this addGoggles "rhsusf_shemagh2_gogg_tan";

comment "Add weapons";
this addWeapon "rhs_weap_m4_carryhandle_grip3";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_wmx_light";
this addPrimaryWeaponItem "rhsusf_acc_g33_xps3";
this addPrimaryWeaponItem "rhsusf_acc_grip3_tan";
this addWeapon "hgun_Pistol_heavy_01_F";
this addHandgunItem "ACE_muzzle_mzls_smg_01";
this addHandgunItem "acc_flashlight_pistol";
this addHandgunItem "optic_MRD";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ACE_Altimeter";
this linkItem "tf_anprc152_1";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";

comment "Set identity";
this setFace "WhiteHead_05";
this setSpeaker "ace_novoice";
