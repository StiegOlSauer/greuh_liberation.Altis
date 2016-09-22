private [ "_virtualWeapons" ];

_virtualWeapons = [];

[ missionNamespace, GRLIB_whitelisted_from_arsenal, true] call BIS_fnc_removeVirtualWeaponCargo;

//{ if ( _x in GRLIB_whitelisted_from_arsenal ) then { _virtualWeapons pushback _x } } foreach (GRLIB_arsenal_all);

[ missionNamespace, GRLIB_whitelisted_from_arsenal ] call BIS_fnc_addVirtualWeaponCargo;