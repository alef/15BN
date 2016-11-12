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
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "Leupold_Mk4";
this addVest "rhsusf_spc_rifleman";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
this addItemToVest "rhs_mag_m18_red";
this addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_yellow";};
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_red";};
this addBackpack "rhsusf_assault_eagleaiii_coy";
this addItemToBackpack "rhsusf_acc_anpeq15_light";
this addItemToBackpack "Laserdesignator";
for "_i" from 1 to 2 do {this addItemToBackpack "Laserbatteries";};
this addHeadgear "rhsusf_lwh_helmet_marpatwd";

comment "Add weapons";
this addWeapon "rhs_weap_m4_carryhandle";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_light";
this addPrimaryWeaponItem "rhsusf_acc_nt4_black";
this addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC";
this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
this setSpeaker "ACE_NoVoice";
