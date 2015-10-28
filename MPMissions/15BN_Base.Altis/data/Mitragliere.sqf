comment "15BN AutoRifleman Template";

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
this addItemToUniform "rhsusf_mag_7x45acp_MHP";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
this addVest "rhsusf_spc_mg";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_an_m8hc";};
this addItemToVest "rhs_200rnd_556x45_M_SAW";
this addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";
this addBackpack "rhsusf_assault_eagleaiii_coy";
for "_i" from 1 to 3 do {this addItemToBackpack "rhs_200rnd_556x45_M_SAW";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_m18_red";};
this addHeadgear "rhsusf_lwh_helmet_marpatwd";

comment "Add weapons";
this addWeapon "rhs_weap_m249_pip_L";
this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
this addWeapon "rhsusf_weap_m1911a1";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";

comment "Set identity";
this setSpeaker "ACE_NoVoice";
