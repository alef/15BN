/*
	Description:
		Fix AI airplane takeoff at Selakano airport
		

	Parameter(s):
		list of objects

	Example:
		from trigger "[thistrigger, thislist] call ALEF_fnc_fixTakeoff";

	Returns:
		Nothing

*/
#define DEBUG_MODE_FULL

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_ALiVE_fixTakeoff.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"


LOG("Begin");
{
	if ((typeOf _x) isKindOf ["Air", configFile >> "CfgVehicles"]) then {
		if (speed _x < 100 ) then { // km/h
			_x setDir getdir (_this select 0); // thistrigger
			_x setVehiclePosition [ _this select 0,[],0,"FLY"];
			_x setVelocity ((
				vectorDir (_this select 0)
			) vectorMultiply 30); // m/s == 108 km/h
		};
	};
} foreach (_this select 1); // thislist
LOG("End");
