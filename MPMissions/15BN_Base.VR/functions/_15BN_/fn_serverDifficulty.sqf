/*
	Description:
		Show server difficulty settings as CBA settings

	Parameter(s):
		None

	Returns:
		Nothing
		The settings are available in the CBA settings system

	Example:
		0 call ALEF_fnc_serverDifficulty
*/
// #define DEBUG_MODE_FULL
#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_serverDifficulty.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"
LOG("Begin");
private _DOG = (configfile >> "RscDisplayGameOptions" >> "controls" >> "DifficultyGroup" >> "controls" >> "DiffOptionsGroup" >> "controls" );
{
	private "_text", "_cfg", "_type" ;
	private _tooltip = "", _option = "";
	_cfg = configName _x;
	_cfg = toUpper(_cfg select [0,1]) + (_cfg select [1]); // Capitalize
	_cfg = switch (_cfg) do {
		case "FriendlyTags": { "FriendlyTag" };
		case "EnemyTags": { "EnemyTag" };
		case "DetectedMines": { "Mines" };
		case "WeaponCrosshair": { "Crosshair" };
		case "ThirdPersonView": { "ThirdPerson" };
		case "DeathMessages": { "KilledBy" };
		case "VonID": { "VON" };
		case "SquadRadar"; case "MapContent": { "" };
		default {_cfg};
	};
	if (_cfg != "") then {
		if (0 == _cfg find "MapContent") then {
			private _word = _cfg select [10];
			private _typo = if (_word == "Friendly") then { "Friendy" } else { _word };
			_option = _DOG >> "ExtendedMapOption" + _typo;
			_cfg    = _DOG >> "ExtendedMapText"   + _word;
		} else {
			_option = _DOG >> _cfg + "Option";
			_cfg    = _DOG >> _cfg + "Text";
		};
		_text    = getText( _cfg >> "text" );
		_tooltip = getText( _cfg >> "optionDescription" );
		if (_text   == "") then { _text   = configName _x; };
		if (_tooltip == "") then { _tooltip = configName _x; };
		_type = switch ( inheritsFrom _option ) do {
			case (configFile >> "RscCheckBox"): { "CHECKBOX" };
			default { "LIST" };
		};
		private _val = difficultyOption configName _x;
		[
			 "ALEF_srvdiff_" + configName _x
			,_type
			,[ _text, _tooltip ]
			,"Server Difficulty"
			,switch (_type) do {
				case "CHECKBOX": { _val == 1 };
				default {[ [0,1,2], ["0","1","2"], _val]}; // TODO what
			}
			,2
			,{}
		] call CBA_Settings_fnc_init;
	};
} foreach configProperties [configfile >> "CfgDifficultyPresets" >> "Custom" >> "Options"];
LOG("End");
