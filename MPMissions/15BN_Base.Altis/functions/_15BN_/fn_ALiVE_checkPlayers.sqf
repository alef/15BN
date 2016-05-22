/*
	Description:
		Checks if some players crossed north red line
		Only from server.

	Parameter(s):
		Nothing

	Example:
		from initServer.sqf: call ALEF_fnc_ALiVE_checkPlayers ;

	Returns:
		Nothing

*/

#define DEBUG_MODE_FULL
#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_ALiVE_checkPlayers.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
private ["_y","_u","_pause"];
_pause=true;
scopeName "allPlayers";
{
	_u = _x ; // avoid confusion with the coordinate
	LOG("");
	switch (lifeState _u) do {
		case "HEALTHY";
		case "INJURED": {
			LOG("");
			if (_u call ACE_common_fnc_isAwake) then {
				LOG("");
				_y = (getPos _u) select 1;
				LOG("");
				if ( _y > 14500 ) then {
					LOG("");
					_pause=false;
					LOG("");
					breakTo "allPlayers";
				};
			};
		};
	};
} foreach (allPlayers - entities "HeadlessClient_F");
LOG("");
//["ALIVE_SYS_PROFILE","ALIVE_MIL_OPCOM","ALIVE_MIL_LOGISTICS"] call ALiVE_fnc_pauseModule;
scopeName "OPCOM_instances";
{
	LOG("");
	if ("rhs_faction_msv" in ([_x, "factions"] call ALiVE_fnc_hashGet)) then {
		[_x, "pause", _pause] call ALiVE_fnc_OPCOM;
		if (_pause) then { LOG("ALiVE paused"); }
			else { LOG("ALiVE unpaused"); };
		breakTo "OPCOM_instances";
	};
} foreach OPCOM_instances;
LOG("End");
