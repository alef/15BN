//#define DEBUG_MODE_FULL
#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE initPlayerLocal.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
private ["_p", "_didJIP"];
_p = param [0, objNull];
_didJIP = param [1, false];

[] call ALEF_fnc_chestpack;

if (hasInterface) then { player createDiaryRecord ["Log", ["Sistema medico", 
	(if (ACE_Medical_bleedingCoefficient != 1.0) then {format ["Il dissanguamento è %1 volte più veloce<br/>",ACE_Medical_bleedingCoefficient]} else {""}) +
	(if (ACE_Medical_painCoefficient     != 1.0) then {format ["L'effetto dolore è moltiplicato per %1<br/>",ACE_Medical_painCoefficient]} else {""}) +
	(if (ACE_Medical_preventInstaDeath) then {"Non si morirà sul colpo"} else {"Sarà possibile morire sul colpo"}) + "<br/>" +
	(if (ACE_Medical_enableOverdosing) then {"Si può andare in overdose di morfina"} else {"Non ci sarà overdose di morfina"}) + "<br/>" +
	(if (ACE_Medical_enableScreams) then {"Ci saranno urla"} else {"Non ci saranno urla"} )
	]];
	ace_maptools_mapGpsShow = false;
};

[] spawn ALEF_fnc_MCC_init;

hcRemoveAllGroups player;
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
endLoadingScreen;
[["_15BN_Base","Istruzioni"],35,"",35,"",true,false,false,true] call BIS_fnc_advHint;
LOG("End");
