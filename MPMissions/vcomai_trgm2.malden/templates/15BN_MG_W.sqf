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
this forceAddUniform "rhs_uniform_FROG01_wd";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {this addItemToUniform "11Rnd_45ACP_Mag";};
this addVest "rhsusf_mbav_mg";
for "_i" from 1 to 3 do {this addItemToVest "rhsusf_200Rnd_556x45_box";};
this addBackpack "rhsusf_assault_eagleaiii_coy";
for "_i" from 1 to 7 do {this addItemToBackpack "ACE_morphine";};
this addItemToBackpack "rhsusf_200Rnd_556x45_box";
for "_i" from 1 to 5 do {this addItemToBackpack "SmokeShell";};
for "_i" from 1 to 5 do {this addItemToBackpack "SmokeShellRed";};
this addHeadgear "rhsusf_opscore_bk_pelt";
this addGoggles "rhsusf_oakley_goggles_blk";

comment "Add weapons";
this addWeapon "rhs_weap_m249_pip_S_vfg3";
this addPrimaryWeaponItem "rhsusf_acc_g33_xps3_flip";
this addPrimaryWeaponItem "rhsusf_acc_grip3";
this addWeapon "hgun_Pistol_heavy_01_F";
this addHandgunItem "muzzle_snds_acp";
this addHandgunItem "acc_flashlight_pistol";
this addHandgunItem "optic_MRD";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "tf_microdagr";
this linkItem "tf_rf7800str_6";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";

comment "Set identity";
this setFace "WhiteHead_05";
this setSpeaker "ace_novoice";
