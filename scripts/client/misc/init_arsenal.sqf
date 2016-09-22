private [ "_allWeaps", "_virtualWeapons", "_virtualStuff", "_virtualBackpacks", "_shufflingArray" ];

_virtualStuff = [] call LARs_fnc_addAllVirtualCargo;
//_allWeaps = [] call LARs_fnc_addWeapsVirtualCargo;
_allVests = [] call LARs_fnc_addWeapsVirtualCargo;
//GRLIB_arsenal_all = _allWeaps; publicVariable "GRLIB_arsenal_all";

_virtualBackpacks = [];
_virtualWeapons = [];
{ if ( !(_x in GRLIB_blacklisted_from_arsenal) ) then { _virtualBackpacks pushback _x } } foreach (_virtualStuff);
//{ if ( _x in GRLIB_whitelisted_from_arsenal ) then { _virtualWeapons pushback _x } } foreach (_allWeaps);

[ missionNamespace, GRLIB_whitelisted_from_arsenal ] call BIS_fnc_addVirtualWeaponCargo;
[ missionNamespace, _allVests ] call BIS_fnc_addVirtualWeaponCargo;
[ missionNamespace, true ] call BIS_fnc_addVirtualMagazineCargo;
[ missionNamespace, true ] call BIS_fnc_addVirtualItemCargo;
[ missionNamespace, _virtualBackpacks ] call BIS_fnc_addVirtualBackpackCargo;