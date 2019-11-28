params [ "_vehicle" ];
private [ "_grp", "_vehcrew" ];

diag_log format [ "Spawning opfor crew at %1", time ];

_grp = createGroup EAST;
_vehcrew = [];
while { count units _grp < 3 } do {
	( opfor_crew call BIS_fnc_selectRandom ) createUnit [ getpos _vehicle, _grp,'this addMPEventHandler [''MPKilled'', {_this spawn kill_manager}]', 0.5, 'private'];
};
_grp selectLeader ((units _grp) select 0);
((units _grp) select 0) setRank "CAPTAIN";
((units _grp) select 0) moveInDriver _vehicle;
((units _grp) select 1) moveInGunner _vehicle;
((units _grp) select 2) moveInCommander _vehicle;
{
	if ( vehicle _x == _x ) then {
		deleteVehicle _x;
	} else {
		if ( (typeof _x) in original_resistance) then {
			[ _x ] call loadout_crewman;
		};
		if ( (typeof _x) in opfor_crew) then {
			[ _x ] call opfor_crew_loadout;
		};
	};
} foreach (units _grp);

diag_log format [ "Done Spawning opfor crew at %1", time ];
