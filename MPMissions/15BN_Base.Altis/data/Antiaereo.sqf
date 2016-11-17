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
this addItemToUniform "ACE_microDAGR";
this addVest "rhsusf_spc_rifleman";
this addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
this addItemToVest "rhs_mag_m18_red";
this addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
this addBackpack "rhsusf_assault_eagleaiii_coy";
this addItemToBackpack "rhs_fim92_mag";
this addHeadgear "rhsusf_lwh_helmet_marpatwd";

comment "Add weapons";
this addWeapon "rhs_weap_m4_carryhandle_grip3";
this addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC";
this addPrimaryWeaponItem "rhsusf_acc_grip3";
this addWeapon "rhs_weap_fim92";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
this setSpeaker "ACE_NoVoice";
