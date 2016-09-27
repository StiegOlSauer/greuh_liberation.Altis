if (!isServer) exitWith {};
waitUntil { time > 1 };
waitUntil { !isNil "GRLIB_all_fobs" };
waitUntil { !isNil "save_is_loaded" };

if ( count GRLIB_all_fobs > 0 ) then {
	{
		_taskMarkers = [];
		_sectorMarkers = [_x] call F_tasks_getNearestMarkers;
		_sectorMarkers resize 5;
		{
			_marker = format ["task_c_%1", _x];
			_taskMarkers = _taskMarkers + [_marker];
		} foreach _sectorMarkers;		

		{
			_nil = [_x] call F_tasks_spawnTask;
			GRLIB_tasksAssigned = GRLIB_tasksAssigned + [_x];			
			sleep 2;
		} foreach _taskMarkers;
	} foreach GRLIB_all_fobs;
};

{
	_x addEventHandler ["TaskSetAsCurrent",{GRLIB_tasksRunning = [];_tmp1 = format ["%1", _this select 1]; _tmp2 = _tmp1 splitString " ";_tmpNewTask = _tmp2 select 1; GRLIB_tasksRunning append [_tmpNewTask];}];
} foreach AllPlayers;