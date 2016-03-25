/*
	Description:
		Add player actions to US soldiers for join and leave the High Command

	Parameter(s):
		The soldier

	Example:
		from XEH: init = "_this call ALEF_fnc_hcSetGroup";

	Returns:
		Nothing

*/
// #define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_hcSetGroup.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
private ["_type","_initializedClasses","_add","_remove"];

params ["_unit"];
TRACE_1("params", _unit);
_type = typeOf _unit;

// from ACE
if (_type in initializedClasses) exitWith {};
initializedClasses pushBack _type;

private ["_a"];

_a = [
	"hcSetGroup",
	"Sotto Comando",
	"\z\ace\addons\interaction\UI\team\team_management_ca.paa",
	{player hcSetGroup [group (_this select 0)]},
	{not ((group (_this select 0)) in (hcAllGroups player))}
] call ace_interact_menu_fnc_createAction;
[
	_type,
	0,
	["ACE_MainActions"],
	_a
] call ace_interact_menu_fnc_addActionToClass;
_a = [
	"hcRemoveGroup",
	"Lascia Comando",
	"\z\ace\addons\interaction\UI\team\team_management_ca.paa",
	{player hcRemoveGroup group (_this select 0)},
	{(group (_this select 0)) in (hcAllGroups player)}
] call ace_interact_menu_fnc_createAction;
[
	_type,
	0,
	["ACE_MainActions"],
	_a
] call ace_interact_menu_fnc_addActionToClass;
LOG("End");
