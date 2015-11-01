#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_ALiVE_RHS_blacklists.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
// ALiVE_PLACEMENT_CUSTOM_UNITBLACKLIST = [];
// ALiVE_PLACEMENT_CUSTOM_VEHICLEBLACKLIST = [];
ALiVE_PLACEMENT_CUSTOM_GROUPBLACKLIST = [
// Remove the Infantry (Flora)
"rhs_group_rus_msv_infantry_chq", // 4: Company HQ
"rhs_group_rus_msv_infantry_fireteam", // 4: Fireteam
"rhs_group_rus_msv_infantry_MANEUVER", // 3: Maneuver team
"rhs_group_rus_msv_infantry_section_AA", // 5: Section AA
"rhs_group_rus_msv_infantry_section_AT", // 5: Section AT
"rhs_group_rus_msv_infantry_section_marksman", // 5: Section Marksman
"rhs_group_rus_msv_infantry_section_mg", // 5: Section MG
"rhs_group_rus_msv_infantry_squad", // 10: Squad
"rhs_group_rus_msv_infantry_squad_2mg", // 7: Squad (2x GPMG)
"rhs_group_rus_msv_infantry_squad_mg_sniper", // 7: Squad (GPMG + Marksman)
"rhs_group_rus_msv_infantry_squad_sniper" // 7: Squad (Marksman)
];
LOG("End");
