if (!isServer) exitWith {};
//define task type according to matrix
//put corresponding task content - name and description in a variables
//perhaps, I need separate function for this
params ["_taskMarker", "_taskCity"];
private ["_counter"];

diag_log "task spawn started";
diag_log _taskMarker;

_counter = 0;
{
	_tmp = _x select 0;
	if (_taskMarker == _tmp) exitWith {};
	_counter = _counter + 1;
} foreach GRLIB_markerToTask;

diag_log "tried to find task id";
diag_log _counter;

//pick random task type
_taskAlice = GRLIB_markerToTask select _counter;
_arrayOfCompatTasks = _taskAlice select 1;
_taskType = _arrayOfCompatTasks select (floor (random(count _arrayOfCompatTasks)));

diag_log "Task type for spawn";
diag_log _taskType;

_taskObject = GRLIB_taskDescriptions select _taskType;
_taskDescription = _taskObject select 1;
_taskTitle = _taskObject select 2;

//[west,[_taskMarker],[_taskDescription,_taskTitle,_taskMarker],getMarkerPos _taskMarker,"CREATED",1,false,"attack",true] call BIS_fnc_taskCreate;
[west,[_taskMarker],[_taskDescription,_taskTitle,_taskMarker],getMarkerPos _taskCity,"CREATED",1,false,"attack",true] call BIS_fnc_taskCreate;
//0          1                              2                                  3         4       5   6       7     8
//0 = [_taskMarker, "CREATED"] call BIS_fnc_taskSetState;

//GRLIB_tasksAssigned = GRLIB_tasksAssigned + [_taskMarker];
//now we need to start a task, I think. Via spawn. Ensure that spawned task knows its name - it will need to delete itself on completion

switch _taskType do {
	case 0: {[_taskMarker] spawn task_banditCamp};
};