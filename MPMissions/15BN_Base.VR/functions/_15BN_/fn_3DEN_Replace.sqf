/*
	Description:
		Replace all units in mission with the one coming from the template
		The template has an empty marker named Base.
		The map has an empty marker named _Base.

	Parameter(s):
		Nothing

	Example:
		From 3DEN, press CTRL+D and execute [] call ALEF_fnc_3DEN_Replace;

	Returns:
		Nothing
*/

#define DEBUG_MODE_FULL
#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_3DEN_Replace.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"
LOG("Begin");

private _base =   {if ("_Base" in get3DENLayerEntities _x) exitWith {_x}} forEach (all3DENEntities select 6);
private _merged = {if  ("Base" in get3DENLayerEntities _x) exitWith {_x}} forEach (all3DENEntities select 6);
private _base_objects = [];
private _fill_base_objects = {
	{
		switch (typeName _x) do {
			case "SCALAR": { _x call _fill_base_objects; }; // Recurse
			case "OBJECT": { _base_objects pushBack _x;  };
			case "GROUP": {{ _base_objects pushBack _x; } forEach units _x; };
		};
	} forEach (get3DENLayerEntities _this);
};
_base call _fill_base_objects;
private _merged_objects = [];
private _fill_merged_objects = {
	{
		switch (typeName _x) do {
			case "SCALAR": { _x call _fill_merged_objects; }; // Recurse
			case "OBJECT": { _merged_objects pushBack _x;  };
			case "GROUP": {{ _merged_objects pushBack _x; } forEach units _x; };
		};
	} forEach (get3DENLayerEntities _this);
};
_merged call _fill_merged_objects;
// replace base objects atributes with merged ones
{
	private _dst = _x;
	{ private _src = _x;
	if (typeOf _dst == typeOf _src) then { // copy over

		// Modules
		{ private _attr = (typeOf _src) + "_" + _x;
		  TRACE_3("Module: ", typeOf _dst, _attr, _src get3DENAttribute _attr);
		 _dst set3DENAttribute  [_attr, (_src get3DENAttribute _attr) select 0];
		} forEach ((configFile >> "CfgVehicles" >> (typeOf _src) >> "Arguments") call BIS_fnc_getCfgSubClasses);

		// Units
		{ private _attr = _x;
		  TRACE_3("Object: ", typeOf _dst, _attr, _src get3DENAttribute _attr);
		 _dst set3DENAttribute  [_attr, (_src get3DENAttribute _attr) select 0];
		} forEach [
			"Init", "hideObject", "enableSimulation", "allowDamage",
			"enableStamina", "presence", "presenceCondition", "ammoBox"
		];

		// Units: ammoBox doesn't always work
		[ _src, [_dst, "Inventory"]] call BIS_fnc_saveInventory;
		[ _dst, [_dst, "Inventory"]] call BIS_fnc_loadInventory;
	};
	} forEach _merged_objects;

} forEach _base_objects;
LOG("End");
