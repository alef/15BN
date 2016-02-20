#define DEBUG_MODE_FULL
#define PREFIX BIS
#define COMPONENT event
#define THIS_FILE initPlayerLocal.sqf
#include "\x\cba\addons\main\script_macros_common.hpp"

LOG("Begin");
private ["_p", "_didJIP"];
_p = param [0, objNull];
_didJIP = param [1, false];

// waitUntil {(player getVariable ["alive_sys_player_playerloaded", false])};

[] call ALEF_fnc_saveTemplates; 

if (hasInterface) then { player createDiaryRecord ["Log", ["Sistema medico", 
	// (if (AGM_Medical_CoefDamage   != 1.0) then {format ["Il danno viene moltiplicato per %1<br/>",AGM_Medical_CoefDamage]} else {""}) +
	(if (ACE_Medical_bleedingCoefficient != 1.0) then {format ["Il dissanguamento è %1 volte più veloce<br/>",ACE_Medical_bleedingCoefficient]} else {""}) +
	(if (ACE_Medical_painCoefficient     != 1.0) then {format ["L'effetto dolore è moltiplicato per %1<br/>",ACE_Medical_painCoefficient]} else {""}) +
	// (if (AGM_Medical_CoefNonMedic != 1.0) then {format ["Chi non è medico sarà %1 volte più lento<br/>",AGM_Medical_CoefNonMedic]} else {""}) +
	// (if (AGM_Medical_AllowNonMedics) then {"Chiunque può usare epinefrina e fare trasfusioni"} else {"Solo i medici possono usare epinefrina e fare trasfusioni"}) + "<br/>" +
	// (if (AGM_Medical_RequireDiagnosis) then {"Bisogna fare la diagnosi prima di qualsiasi cura"} else {"Non serve fare diagnosi per curare"}) + "<br/>" +
	(if (ACE_Medical_preventInstaDeath) then {"Non si morirà sul colpo"} else {"Sarà possibile morire sul colpo"}) + "<br/>" +
	// (if (AGM_Medical_PreventDeathWhileUnconscious) then {"Non si morirà durante il coma se colpiti"} else {"Si potrà morire durante il coma se colpiti"}) + "<br/>" +
	// (if (AGM_Medical_SingleBandage) then {"Basta una benda per tutto il corpo"} else {"Servono bende per le singole parti del corpo"}) + "<br/>" +
	// (if (AGM_Medical_AllowChatWhileUnconscious) then {"Si può chattare mentre in coma"} else {"Non si può chattare mentre in coma"}) + "<br/>" +
	(if (ACE_Medical_enableOverdosing) then {"Si può andare in overdose di morfina"} else {"Non ci sarà overdose di morfina"}) + "<br/>" +
	// (if (AGM_Medical_RequireMEDEVAC) then {"Serve un veicolo per curare (?)"} else {"Non serve un veicolo per curare"}) + "<br/>" +
	// (if (AGM_Medical_AutomaticWakeup) then {"Si può tornare dal coma a caso"} else {"Non ci si risveglia dal coma a caso"}) + "<br/>" +
	(if (ACE_Medical_enableScreams) then {"Ci saranno urla"} else {"Non ci saranno urla"} )
	]];
};
if ( (1 == ["Loadout",1] call BIS_fnc_getParamValue) && (east != side player) ) then { player call ALEF_fnc_spawnLoadout; };

enterSafeZone = {
	// Removes fired object as they leave weapons
	// Doesn't work for vehicles other than players
	safeZone_EH = player addEventHandler [
		"Fired",
		{ deleteVehicle (_this select 6); }
	];
	arsenal_ID = player addAction ['<t color=''#cc0000''>Arsenale Virtuale</t>', '["Open",true] call BIS_fnc_arsenal',
		nil, 1.5, false];
};

leaveSafeZone = {
	player removeEventHandler ["Fired", safeZone_EH];
	player removeAction arsenal_ID;
};

safeZone_trg = createTrigger ["EmptyDetector", [17430.176,13161.32], false]; // Pygros base. 'false' means local
safeZone_trg setTriggerArea [108, 78, 47, true]; // rectangle
safeZone_trg setTriggerActivation ["WEST", "PRESENT", true];
safeZone_trg triggerAttachVehicle [player];
safeZone_trg setTriggerStatements ["this", "call enterSafeZone", "call leaveSafeZone"];

[["_15BN_","Istruzioni"],35,"",35,"",true,false,false,true] call BIS_fnc_advHint;


LOG("End");
