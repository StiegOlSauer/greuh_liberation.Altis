if (!isServer) exitWith {};

params ["_taskMarker"];
private ["_taskCity","_base_objects", "_unitToSpawn", "_defendersAlive", "_arrayOfPositions", "_ammoboxes", "_taskStates", "_pos", "_spawnedAlready", "_prepareInProgress"];

_taskStates = [];
_base_objects = [];
_defendersAlive = [];
_arrayOfPositions = [];
_spawnedAlready = false;
_prepareInProgress = true;
_ammoboxes = [];
_taskCity = [_taskMarker] call BIS_fnc_taskDestination;
diag_log "Bandit camp task created";

while {( ({ alive _x } count _defendersAlive ) > 1) || (_prepareInProgress)} do {

	sleep 5; 
	//mission is assigned - spawn it
	if ((_taskMarker in GRLIB_tasksRunning) && !(_spawnedAlready)) then {
		diag_log "ENTERED BRANCH SPAWN";
		
		_spawnedAlready = true;
		_prepareInProgress = false;
		
		sleep 1;
		_base_objects = [getMarkerPos _taskMarker, (random 360), call (compile (preprocessFileLineNumbers "scripts\fob_templates\banditCamp.sqf"))] call BIS_fnc_ObjectsMapper;		
		sleep 5;

		_grpdefenders = createGroup EAST;
		{	
			if ((typeOf _x) == "VR_Area_01_square_1x1_grey_F") then {
				_pos = getPos _x;
				_arrayOfPositions append [_pos];
				_unitToSpawn = militia_squad call bis_fnc_selectrandom;
				deleteVehicle _x;
				_unitToSpawn createUnit [_pos, _grpdefenders,"this addMPEventHandler [""MPKilled"", {_this spawn kill_manager}]", 0.5, "private"];
				diag_log "unit spawned";
				sleep 0.5;
			};
			
			if ((typeOf _x) == "Box_East_Wps_F") then {
				clearWeaponCargoGlobal _x;
				clearMagazineCargoGlobal _x;
				clearItemCargoGlobal _x;
				clearBackpackCargoGlobal _x;
				_x addMPEventHandler ['MPKilled', {_this spawn kill_manager}];
				_ammoboxes = _ammoboxes + [_x];
			};
		} foreach _base_objects;
		
		_grpdefenders setBehaviour "CARELESS";

		{
			_defendersAlive = _defendersAlive + [_x];			
			if ((count _arrayOfPositions) > 0) then {
				_x setPos (_arrayOfPositions select 0);
				_arrayOfPositions deleteAt 0;
			};
			[_x] join grpNull;
			[_x] call ( militia_standard_squad call BIS_fnc_selectRandom ); 
		} foreach (units _grpdefenders);

		sleep 1;
		{ _x setDamage 0; } foreach (_base_objects);
		_base_objects = _base_objects - _ammoboxes;
		
		_grpsentry = createGroup EAST;
		for [ {_idx=0},{_idx < 4},{_idx=_idx+1} ] do {
			_unitToSpawn = militia_squad call bis_fnc_selectrandom;
			_unitToSpawn createUnit [getMarkerPos _taskMarker, _grpsentry,"this addMPEventHandler [""MPKilled"", {_this spawn kill_manager}]", 0.5, "private"];
			sleep 0.5;
			diag_log "patrol spawned";
		};		
		{	
			[_x] call ( militia_standard_squad call BIS_fnc_selectRandom ); 
		} foreach (units _grpsentry);
		
		0 = [_grpsentry,  markerpos _taskMarker, 50] call BIS_fnc_taskPatrol;
		
		_defendersAlive = _defendersAlive + (units _grpsentry);
		diag_log "All spawned";
		diag_log _base_objects;
		0 = [_taskMarker, getMarkerPos _taskMarker] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "ASSIGNED",false] spawn BIS_fnc_taskSetState;
	};
	
	//mission was spawned, but then unassigned - cleanup and restore starting state
	if ((_spawnedAlready) && !(_taskMarker in GRLIB_tasksRunning)) then {		
		diag_log "ENTERED BRANCH CLEANUP";		
		diag_log _base_objects;
		
		{sleep 0.1; deleteVehicle _x;} foreach _base_objects;
		{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;	
		//need to return marker back
		_prepareInProgress = true;
		_spawnedAlready = false;
		0 = [_taskMarker, _taskCity] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "CREATED",false] spawn BIS_fnc_taskSetState;
	};
	
	//FOB relocated and mission did not appear again - check if it was spawned before, cleanup, end thread
	if (!(_taskMarker in GRLIB_tasksAssigned)) then {
		diag_log "ENTERED BRANCH END";
		//do cleanup
		_prepareInProgress == false;
		{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;
	};
};

diag_log "EXITED FROM LOOP";
//cleanup code
if ((_taskMarker in GRLIB_tasksAssigned) && ((_taskMarker in GRLIB_tasksRunning))) then {
	_nil = [_taskMarker, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
	sleep 5;
	0 = [_taskMarker] call BIS_fnc_deleteTask;
	0 = GRLIB_tasksAssigned deleteAt (GRLIB_tasksAssigned find _taskMarker);
	0 = GRLIB_tasksRunning deleteAt (GRLIB_tasksRunning find _taskMarker);
	
	diag_log "GRLIB_tasksRunning GRLIB_tasksAssigned";
	diag_log GRLIB_tasksRunning;
	diag_log GRLIB_tasksAssigned;
	
	sleep 1;
	[_taskMarker] call F_tasks_replaceTask;
	sleep 30;
};

{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;		
{sleep 0.1; deleteVehicle _x;} foreach _base_objects;

/*
waitUntil {
	sleep 5;
	diag_log GRLIB_tasksRunning;
	(_taskMarker in GRLIB_tasksRunning)};
*/