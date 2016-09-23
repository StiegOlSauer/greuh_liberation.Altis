if (!isServer) exitWith {};
//F_tasks_replaceTask
//define nearest fob
//pick one location which is not the location task completed for
//create new task in that location
params ["_completedTask"];
private ["_newTaskLocations", "_fob", "_fobPos", "_newTask", "_sectorMarkers", "_marker", "_random", "_countFobs"];

_fob = nearestObject [getMarkerPos _completedTask, FOB_typename];
_fobPos = getPos _fob;
_newTaskLocations = [];

_sectorMarkers = [_fobPos] call F_tasks_getNearestMarkers;
//TODO: handle free task starvation case
diag_log "_sectorMarkers";
diag_log _sectorMarkers;
{
	_marker = format ["task_c_%1", _x];
	_newTaskLocations append [_marker];
} foreach _sectorMarkers;

_newTaskLocations = _newTaskLocations - GRLIB_tasksAssigned - [_completedTask];
diag_log "_newTaskLocations";
diag_log _newTaskLocations;

_random = random (floor (count _newTaskLocations));
//_newTask = [_newTaskLocations] call BIS_fnc_selectRandom;

0 = [(_newTaskLocations select _random), (_sectorMarkers select _random)] call F_tasks_spawnTask;
