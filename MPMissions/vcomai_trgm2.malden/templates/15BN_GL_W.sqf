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
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {this addItemToUniform "11Rnd_45ACP_Mag";};
this addItemToUniform "rhs_m72a7_mag";
this addVest "rhsusf_spc_teamleader";
for "_i" from 1 to 10 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 6 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_mk84";};
this addBackpack "rhsusf_assault_eagleaiii_coy";
for "_i" from 1 to 7 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {this addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 5 do {this addItemToBackpack "MiniGrenade";};
this addHeadgear "rhsusf_opscore_bk_pelt";
this addGoggles "rhsusf_shemagh2_gogg_tan";

comment "Add weapons";
this addWeapon "rhs_weap_m4a1_m203s_d";
this addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
this addPrimaryWeaponItem "ACE_acc_pointer_green";
this addPrimaryWeaponItem "rhsusf_acc_su230a_mrds_c";
this addWeapon "hgun_Pistol_heavy_01_F";
this addHandgunItem "muzzle_snds_acp";
this addHandgunItem "acc_flashlight_pistol";
this addHandgunItem "optic_MRD";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_1";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";

comment "Set identity";
this setFace "WhiteHead_05";
this setSpeaker "ace_novoice";
