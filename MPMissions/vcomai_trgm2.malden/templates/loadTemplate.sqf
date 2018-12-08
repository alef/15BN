_respawnCombo = uiNamespace getVariable (["BIS_RscRespawnControlsMap_ctrlComboLoadout", "BIS_RscRespawnControlsSpectate_ctrlComboLoadout"] select (uiNamespace getVariable ["BIS_RscRespawnControlsSpectate_shown", false]));
_respawnTemplateDisplayName = _respawnCombo lbText (lbCurSel _respawnCombo);

_loadoutScript ="";
switch (_respawnTemplateDisplayName) do {
	case "TL Desert": { 
		_loadoutScript = "templates\15BN_TL_D.sqf";
	};
	case "TL Woodland": { 
		_loadoutScript = "templates\15BN_TL_W.sqf";
	};
	case "RF Desert": { 
		_loadoutScript = "templates\15BN_RF_D.sqf";
	};
	case "RF Woodland": { 
		_loadoutScript = "templates\15BN_RF_W.sqf";
	};	
	case "MG Desert": { 
		_loadoutScript = "templates\15BN_MG_D.sqf";
	};
	case "MG Woodland": { 
		_loadoutScript = "templates\15BN_MG_W.sqf";
	};	
	case "GL Desert": { 
		_loadoutScript = "templates\15BN_GL_D.sqf";
	};
	case "GL Woodland": { 
		_loadoutScript = "templates\15BN_GL_W.sqf";
	};	
	case "Medic Desert": { 
		_loadoutScript = "templates\15BN_MEDIC_D.sqf";
	};
	case "Medic Woodland": { 
		_loadoutScript = "templates\15BN_MEDIC_W.sqf";
	};	
	case "EOD Desert": { 
		_loadoutScript = "templates\15BN_EOD_D.sqf";
	};
	case "EOD Woodland": { 
		_loadoutScript = "templates\15BN_EOD_W.sqf";
	};	
};

[] execVM _loadoutScript;