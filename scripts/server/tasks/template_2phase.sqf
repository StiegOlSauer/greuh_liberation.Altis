//template for 1-phase simple mission
if (!isServer) exitWith {};

params ["_markersArray"];
private ["_taskPrefix", "_taskMarker", "_taskCity","_base_objects", "_unitToSpawn", "_defendersAlive", "_arrayOfPositions", "_ammoboxes", "_taskStates", "_pos",
"_phaseOneSpawned", "_phaseTwoSpawned", "_phaseOneDone", "_phaseTwoDone", "_phaseOnePrepare", "_phaseTwoPrepare"];

_taskPrefix = "";
_taskStates = [];
_base_objects = [];
_defendersAlive = [];
_arrayOfPositions = [];
_phaseOneSpawned = false;
_phaseTwoSpawned = false;
_phaseOneDone = false;
_phaseTwoDone = false;
_phaseOnePrepare = true;
_phaseTwoPrepare = false;
_ammoboxes = [];
_taskMarker = _markersArray deleteAt 0;
_taskCity = [_taskMarker] call BIS_fnc_taskDestination;
diag_log format ["%1 task %2 INITIALIZATION START",_taskPrefix, _taskMarker];

while {(({ alive _x } count _defendersAlive ) > 0) || ((_phaseOnePrepare) && !(_phaseOneDone))} do {

	sleep 2; 
	//mission is assigned - spawn it
	if ((([_taskMarker] call BIS_fnc_taskState) == "ASSIGNED") && !(_spawnedAlready)) then {
		diag_log format ["%1 task %2 ENTERED BRANCH SPAWN",_taskPrefix, _taskMarker];
		
		//code goes here
		
		_phaseOneSpawned = true;
		_phaseOnePrepare = false;
		0 = [_taskMarker, getMarkerPos _taskMarker] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "ASSIGNED",false] spawn BIS_fnc_taskSetState;
	};
	
	//mission was spawned, but then unassigned - cleanup and restore starting state
	if ((_phaseOneSpawned) && !(([_taskMarker] call BIS_fnc_taskState) == "ASSIGNED")) then {
		diag_log format ["%1 task %2 ENTERED BRANCH CLEANUP",_taskPrefix, _taskMarker];		
		
		//need to return marker back
		_phaseOneDone = false;
		_phaseOnePrepare = true;
		_phaseOneSpawned = false;
		0 = [_taskMarker, _taskCity] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "CREATED",false] spawn BIS_fnc_taskSetState;
	};
	
	//FOB relocated and mission did not appear again - check if it was spawned before, cleanup, end thread
	if (!(_taskMarker in GRLIB_tasksAssigned)) then {
		diag_log format ["%1 task %2 ENTERED BRANCH END",_taskPrefix, _taskMarker];
		//do cleanup
		_phaseOnePrepare = false;
		_phaseOneSpawned = false;
		_phaseOneDone = false;
		{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;
	};
};

sleep 1;
diag_log format ["%1 task %2 ended its first phase",_taskPrefix,_taskMarker];
if ((({ alive _x } count _defendersAlive ) == 0) && (([_taskMarker] call BIS_fnc_taskState) == "ASSIGNED") && (_taskMarker in GRLIB_tasksAssigned)) then {
	_phaseOneDone = true;
	_phaseTwoDone = false;
	_phaseOnePrepare = false;
	_phaseTwoPrepare = true;
	_phaseOneSpawned = false;
	_phaseTwoSpawned = false;
};

//Beginning of phase two
while {(({ alive _x } count _convoyDefenders ) > 2) || ((_phaseOneDone) && (_phaseTwoPrepare))} do {	
	
	sleep 10;
	//mission is assigned - spawn it
	if ((([_taskMarker] call BIS_fnc_taskState) == "ASSIGNED") && !(_phaseTwoSpawned)) then {
		diag_log format ["%1 task %2 entered phase two spawn",_taskPrefix,_taskMarker];

		
		
		diag_log format ["%1 task %2 has ended phase two spawn",_taskPrefix, _taskMarker];
		GRLIB_tasksTOD = [];
		_phaseTwoSpawned = true;
		_phaseTwoPrepare = false;
		0 = [_taskMarker, getMarkerPos _convoyStartMarker] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, ["destroy roadblock", "task description", "Task header"]] call BIS_fnc_taskSetDescription
		0 = [_taskMarker, "ASSIGNED",true] spawn BIS_fnc_taskSetState;
	};
	
	if ((_phaseTwoSpawned) && !(([_taskMarker] call BIS_fnc_taskState) == "ASSIGNED")) then {		
		diag_log format ["%1 task %2 ENTERED BRANCH CLEANUP",_taskPrefix, _taskMarker];		
		
		//need to return marker back
		_phaseTwoPrepare = true;
		_phaseTwoSpawned = false;
		//0 = [_taskMarker, _taskCity] call BIS_fnc_taskSetDestination;
		0 = [_taskMarker, "CREATED",false] spawn BIS_fnc_taskSetState;
	};
	
	//FOB relocated and mission did not appear again - check if it was spawned before, cleanup, end thread
	if (!(_taskMarker in GRLIB_tasksAssigned)) then {
		diag_log format ["%1 task %2 ENTERED BRANCH END",_taskPrefix, _taskMarker];
		//do cleanup
		_phaseTwoPrepare = false;
		_phaseTwoSpawned = false;
		{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;
	};
};
	
diag_log format ["%1 task %2 EXITED FROM LOOP",_taskPrefix, _taskMarker];
//cleanup code
if ((_taskMarker in GRLIB_tasksAssigned) && (([_taskMarker] call BIS_fnc_taskState) == "ASSIGNED")) then {
	_nil = [_taskMarker, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
	GRLIB_tasksCompleted append [_taskMarker];
	sleep 5;
	0 = [_taskMarker] call BIS_fnc_deleteTask;
	0 = GRLIB_tasksAssigned deleteAt (GRLIB_tasksAssigned find _taskMarker);
	
	diag_log format ["%1 task %2 SUCCEEDED. AAR: GRLIB_tasksAssigned: %3",_taskPrefix, _taskMarker, GRLIB_tasksAssigned];
	
	sleep 1;
	[_taskMarker] call F_tasks_replaceTask;
	sleep 30;
} else {
	0 = [_taskMarker] call BIS_fnc_deleteTask;
};

{sleep 0.1; deleteVehicle _x;} foreach _defendersAlive;		
{sleep 0.1; deleteVehicle _x;} foreach _base_objects;