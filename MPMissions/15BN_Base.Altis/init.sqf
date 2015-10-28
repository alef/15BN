#define DEBUG_MODE_FULL
#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE init.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");

{ _x call ALEF_fnc_fillBox; } forEach boxes;

if (isClass (configfile >> "CfgPatches" >> "mcc_sandbox")) then
{
	call ALEF_fnc_MCC_Init; 
};

private ["_t"];

LOG("End");
