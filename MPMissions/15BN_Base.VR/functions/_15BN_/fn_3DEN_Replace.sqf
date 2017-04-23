/*
	Description:
		Replace all units in mission with the one coming from the template
		The template has an empty marker named Base.
		The map has an empty marker named _Base.

	Parameter(s):
		Nothing

	Example:
		From 3DEN, watch ALEF_3DEN_Replace_status, press CTRL+D and execute
		terminate ALEF_th; ALEF_fnc_3DEN_Replace = compile preprocessFileLineNumbers "functions\_15BN_\fn_3DEN_Replace.sqf";  ALEF_th = 0 spawn ALEF_fnc_3DEN_Replace
 [] call ALEF_fnc_3DEN_Replace;

	Returns:
		Nothing
*/

#define DEBUG_MODE_FULL
#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_3DEN_Replace.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"
LOG("Begin");
ALEF_3DEN_Replace_status = "Replacing ...";
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
// Scenario attributes can't be merged.
set3DENMissionAttributes [
	 ["Scenario", "IntelBriefingName", "Base"]
	,["Scenario", "OverviewPicture", ""]
	,["Scenario", "OverviewText", ""]
	,["Scenario", "OverviewPictureLocked", ""]
	,["Scenario", "OverviewTextLocked", ""]
	,["Scenario", "LoadScreen", ""]
	,["Scenario", "OnLoadMission", ""]
	,["Scenario", "Briefing", false]
	,["Scenario", "Debriefing", false]
	,["Scenario", "Saving", false]
	,["Scenario", "ShowMap", true]
	,["Scenario", "ShowCompass", false]
	,["Scenario", "ShowWatch", false]
	,["Scenario", "ShowGPS", false]
	,["Scenario", "ShowHUD", true]
	,["Scenario", "ShowUAVFeed", true]
	,["Scenario", "ForceRotorLibSimulation", false]
	,["Scenario", "EnableDebugConsole", 1]
	,["Scenario", "DoneKeys", []] // Debugger says String
	,["Scenario", "Keys", []] // Debugger says String
	,["Scenario", "KeysLimit", 0]
	,["Scenario", "IntelIndepAllegiance", [1,0]]
	,["Scenario", "SaveBinarized", false]
	,["Scenario", "Init",""] // not on BIKI

	,["Intel", "IntelDate", [2017,4,22]]
	,["Intel", "IntelTime", 12]
	,["Intel", "IntelTimeOfChanges", 0] // TBC, min in GUI is 1800 (30 min)
	,["Intel", "IntelWeatherStart", 0]
	,["Intel", "IntelWeatherForecast", 0]
	,["Intel", "IntelFogStart", [0,0,0]] // BIKI says number
	,["Intel", "IntelFogForecast", [0,0,0]] // BIKI says number
	,["Intel", "IntelRainIsForced", false]
	,["Intel", "IntelLightningIsForced", false]
	,["Intel", "IntelWaveIsForced", false]
	,["Intel", "IntelWindIsForced", false]

	,["Multiplayer", "GameType", "Coop"]
	,["Multiplayer", "MinPlayers", 1]
	,["Multiplayer", "IntelOverviewText","Bravo 1 = Alpha 2-1. Bravo 2 = Alpha 2-2. Bravo 3 = Alpha 2-3."]
	,["Multiplayer", "DisabledAI", true]
	,["Multiplayer", "JoinUnassigned", false] // Debugger says true (TBC)
	,["Multiplayer", "Respawn", 3] // Respawn on Custom Position
	,["Multiplayer", "RespawnTemplates", ["Spectator"]]
	,["Multiplayer", "RespawnDelay", 0]
	,["Multiplayer", "RespawnVehicleDelay", 0]
	,["Multiplayer", "RespawnDialog", false]
	,["Multiplayer", "RespawnButton", 0]
	,["Multiplayer", "EnableTeamSwitch", false]
	,["Multiplayer", "AIKills", false]
	,["Multiplayer", "SharedObjectives", 0] // not on BIKI
	,["Multiplayer", "ReviveMode", 0] // not on BIKI

	,["GarbageCollection", "CorpseManagerMode", 0]
	,["GarbageCollection", "WreckManagerMode", 0]
];
ALEF_3DEN_Replace_status = "Done replacing.";
LOG("End");
