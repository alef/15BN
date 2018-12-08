private ["_u","_i","_cname","_fromConfig"];
_fromConfig = false;


TER_fnc_editString = 
{
  params ["_str", "_toFind", "_subsitution"];
  _char = count _toFind;
  _no = _str find _toFind;
  while {-1 != _str find _toFind} do {
      _no = _str find _toFind;
      _splitStr = _str splitString "";
      _splitStr deleteRange [(_no +1), _char -1];
      _splitStr set [_no, _subsitution];
      _str = _splitStr joinString "";
  };
  _str
};


// loop over the configured inventories
{
	_u = "Underwear_F" createVehicleLocal [8460, 25080];
	_cname = configName _x ;
	_name = _cname; //"[=15BN=] "+_cname;
	if (_fromConfig) then {
		[_u, _x] call BIS_fnc_loadInventory;
	} else {
		private ["_h","_code"];
		_loadoutCode = [loadFile ("templates\" + _cname + ".sqf"), "player", "this"] call TER_fnc_editString;
		_code = compile _loadoutCode;
		this = _u ;
		[] call _code;
		this = nil;
	};
	[_u, [profilenamespace, _name]] call BIS_fnc_saveInventory; // save into player's Arsenal slot
	deleteVehicle _u;
} forEach ([(missionConfigFile >> "CfgRespawnInventory"), 0, true] call BIS_fnc_returnChildren);

// removes templates from old versions
//[player, [profilenamespace, "[=15BN=] Lanciagranate"], [], true] call BIS_fnc_saveInventory;

saveProfileNamespace;