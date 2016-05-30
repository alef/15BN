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
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "Leupold_Mk4";
this addVest "rhsusf_spc_rifleman";
this addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
this addItemToVest "rhs_mag_m18_red";
this addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 5 do {this addItemToVest "Chemlight_green";};
for "_i" from 1 to 5 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 5 do {this addItemToVest "Chemlight_yellow";};
for "_i" from 1 to 5 do {this addItemToVest "Chemlight_red";};
this addItemToVest "SmokeShellGreen";
this addBackpack "rhsusf_assault_eagleaiii_coy";
this addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_morphine";};
this addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_fieldDressing";};
this addItemToBackpack "rhsusf_acc_anpeq15_light";
this addItemToBackpack "Laserdesignator";
for "_i" from 1 to 2 do {this addItemToBackpack "B_IR_Grenade";};
for "_i" from 1 to 2 do {this addItemToBackpack "Laserbatteries";};
this addHeadgear "rhsusf_lwh_helmet_marpatwd";

comment "Add weapons";
this addWeapon "rhs_weap_m4_carryhandle";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
this addPrimaryWeaponItem "rhsusf_acc_nt4_black";
this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
this addWeapon "rhsusf_weap_m1911a1";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";

comment "Set identity";
this setSpeaker "ACE_NoVoice";
