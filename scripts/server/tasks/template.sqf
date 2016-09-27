if (!isServer) exitWith {};

params ["_taskMarker", "_markerArray"];
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

while {( ({ alive _x } count _defendersAlive ) > 0) || (_prepareInProgress)} do {

	sleep 5; 
	//mission is assigned - spawn it
	if ((_taskMarker in GRLIB_tasksRunning) && !(_spawnedAlready)) then {
		diag_log format ["task %1 ENTERED BRANCH SPAWN",_taskMarker];
		
		_spawnedAlready = true;
		_prepareInProgress = false;
		0 = [_taskMarker, getMarkerPos _taskMarker] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "ASSIGNED",false] spawn BIS_fnc_taskSetState;
	};
	
	//mission was spawned, but then unassigned - cleanup and restore starting state
	if ((_spawnedAlready) && !(_taskMarker in GRLIB_tasksRunning)) then {		
		diag_log format ["task %1 ENTERED BRANCH CLEANUP",_taskMarker];		
		
		//need to return marker back
		_prepareInProgress = true;
		_spawnedAlready = false;
		0 = [_taskMarker, _taskCity] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "CREATED",false] spawn BIS_fnc_taskSetState;
	};
	
	//FOB relocated and mission did not appear again - check if it was spawned before, cleanup, end thread
	if (!(_taskMarker in GRLIB_tasksAssigned)) then {
		diag_log format ["task %1 ENTERED BRANCH END",_taskMarker];
		//do cleanup
		_prepareInProgress = false;
		_spawnedAlready = false;
		{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;
	};
};

diag_log format ["task %1 EXITED FROM LOOP",_taskMarker];
//cleanup code
if ((_taskMarker in GRLIB_tasksAssigned) && (_taskMarker in GRLIB_tasksRunning)) then {
	_nil = [_taskMarker, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
	GRLIB_tasksCompleted append [_taskMarker];
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
} else {
	0 = [_taskMarker] call BIS_fnc_deleteTask;
//	0 = GRLIB_tasksAssigned deleteAt (GRLIB_tasksAssigned find _taskMarker);
//	0 = GRLIB_tasksRunning deleteAt (GRLIB_tasksRunning find _taskMarker);
};

{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;		
{sleep 0.1; deleteVehicle _x;} foreach _base_objects;

/*
waitUntil {
	sleep 5;
	diag_log GRLIB_tasksRunning;
	(_taskMarker in GRLIB_tasksRunning)};
*/