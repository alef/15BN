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
this addItemToUniform "ACRE_PRC343";
this addVest "rhsusf_spc_rifleman";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 10 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_red";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M441_HE";};
this addBackpack "rhsusf_assault_eagleaiii_coy";
this addItemToBackpack "ACRE_PRC148";
for "_i" from 1 to 5 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
for "_i" from 1 to 8 do {this addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 6 do {this addItemToBackpack "rhs_mag_m714_White";};
this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";

comment "Add weapons";
this addWeapon "rhs_weap_m4_m203";
this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
this addWeapon "rhsusf_weap_m1911a1";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";

comment "Set identity";
this setSpeaker "ACE_NoVoice";