sectors_allSectors = [];
sectors_capture = [];
sectors_bigtown = [];
sectors_factory = [];
sectors_military = [];
sectors_tower = [];
sectors_opfor = [];
sectors_crashsite = [];
tasks_c_markers = [];

{
	_ismissionsector = false;
	_tempmarker = toArray _x; _tempmarker resize 11;
	if ( toString _tempmarker == "opfor_point" ) then {
		sectors_opfor pushback _x;
		_ismissionsector = false;
	};
	_tempmarker = toArray _x; _tempmarker resize 7;
	if ( toString _tempmarker == "capture" ) then {
		sectors_capture pushback _x;
		_ismissionsector = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 7;
	if ( toString _tempmarker == "bigtown" ) then {
		sectors_bigtown pushback _x;
		_ismissionsector = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 7;
	if ( toString _tempmarker == "factory" ) then {
		sectors_factory pushback _x;
		_ismissionsector = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 8;
	if ( toString _tempmarker == "military" ) then {
		sectors_military pushback _x;
		_ismissionsector = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 5;
	if ( toString _tempmarker == "tower" ) then {
		sectors_tower pushback _x;
		_x setMarkerTextLocal format ["%1 %2",markerText _x, mapGridPosition (markerPos _x)];
		_ismissionsector = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 9;
	if ( toString _tempmarker == "crashsite" ) then {
		sectors_crashsite pushback _x;
	};
	_tempmarker = toArray _x; _tempmarker resize 7;
	if ( toString _tempmarker == "task_c_" ) then {
		tasks_c_markers pushback _x;
	};
	if ( _ismissionsector ) then {
		sectors_allSectors pushback _x;
	};
} foreach allMapMarkers;