/*
	Description:
		Reset ACRE desync message.

	Parameter(s):
		Nothing

	Example:
		From the debug window, execute globally: call ALEF_fn_fixACREnuisance

	Returns:
		Nothing
*/

#define PREFIX ALEF
#define COMPONENT base
#define THIS_FILE fn_fixACREnuisance.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
ACRE_SERVER_GEAR_DESYNCED = false;
publicVariable "ACRE_SERVER_GEAR_DESYNCED";
hintSilent "";
LOG("End");
