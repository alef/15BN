#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_ALiVE_RHS_mapping.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
rhs_faction_msv_mappings = [] call ALIVE_fnc_hashCreate;
[rhs_faction_msv_mappings, "Side", "EAST"] call ALIVE_fnc_hashSet;
[rhs_faction_msv_mappings, "GroupSideName", "EAST"] call ALIVE_fnc_hashSet;
[rhs_faction_msv_mappings, "FactionName", "rhs_faction_msv"] call ALIVE_fnc_hashSet;

rhs_faction_msv_typeMappings = [] call ALIVE_fnc_hashCreate;
[rhs_faction_msv_typeMappings, "Infantry", "rhs_group_rus_msv_infantry"] call ALIVE_fnc_hashSet;

[rhs_faction_msv_mappings, "GroupFactionTypes", rhs_faction_msv_typeMappings] call ALIVE_fnc_hashSet;

[ALIVE_factionCustomMappings, "rhs_faction_msv", rhs_faction_msv_mappings] call ALIVE_fnc_hashSet;

LOG("End");
