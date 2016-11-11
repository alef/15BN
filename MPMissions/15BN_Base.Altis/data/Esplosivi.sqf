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
this forceAddUniform "rhs_uniform_FROG01_wd";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_epinephrine";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_microDAGR";
this addVest "rhsusf_spc_rifleman";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 10 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
this addItemToVest "rhs_mag_m18_red";
this addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
this addBackpack "rhsusf_assault_eagleaiii_coy";
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_CableTie";};
this addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 5 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
for "_i" from 1 to 2 do {this addItemToBackpack "B_IR_Grenade";};
this addItemToBackpack "rhsusf_acc_nt4_black";
this addItemToBackpack "ACE_M26_Clacker";
this addItemToBackpack "ACE_Clacker";
this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";

comment "Add weapons";
this addWeapon "rhs_weap_m4_carryhandle";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_light";
this addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_14";

comment "Set identity";
this setSpeaker "ACE_NoVoice";
