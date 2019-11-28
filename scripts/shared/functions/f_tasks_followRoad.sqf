if (!isServer) exitWith {};
//start position (any), target position, wanted distance, direction - true means travel to target, false means travel from target
params ["_startingPoint", "_targetPoint", "_targetDistance", "_direction"];
private ["_currentDistance", "_road", "_roadObjects", "_roadSegment1", "_roadSegment2", "_distance1", "_distance2", "_debug"];

diag_log "FOLLOWROAD invocated";

_currentDistance = _startingPoint distance _targetPoint;

_roadObjects = _startingPoint nearRoads 20;
diag_log format ["FOLLOWROAD found roads: %1",_roadObjects];
_road = selectRandom _roadObjects;
diag_log format ["FOLLOWROAD has chosen random road: %1",_road];

if (!(_direction)) then {
	diag_log format ["FOLLOWROAD travels from target"];
	while {_currentDistance < _targetDistance} do {

		_roadSegment1 = (roadsConnectedTo _road) select 0;
		_roadSegment2 = (roadsConnectedTo _road) select 1;
		
		_distance1 = (getPos _roadSegment1) distance _targetPoint;
		_distance2 = (getPos _roadSegment2) distance _targetPoint;
		
		if (_distance1 > _distance2) then {
			_road = _roadSegment1;
		} else {
			_road = _roadSegment2;
		};
		diag_log format ["FOLLOWROAD travels from target, iteration pass, chosen road: %1", (getPos _road)];
		_currentDistance = (getPos _road) distance _targetPoint;		
	};
} else {
	diag_log format ["FOLLOWROAD travels to target"];
	while {_currentDistance > _targetDistance} do {

		_roadSegment1 = (roadsConnectedTo _road) select 0;
		_roadSegment2 = (roadsConnectedTo _road) select 1;
		
		_distance1 = (getPos _roadSegment1) distance _targetPoint;
		_distance2 = (getPos _roadSegment2) distance _targetPoint;
		
		if (_distance1 < _distance2) then {
			_road = _roadSegment1;
		} else {
			_road = _roadSegment2;
		};
		diag_log format ["FOLLOWROAD travels to target, iteration pass, chosen road: %1", (getPos _road)];
		_currentDistance = (getPos _road) distance _targetPoint;		
	};
};
//_debug = createMarker [format ["markername_%1", (floor (random 500))],(getPos _road)];
//_debug setMarkerShape "ICON";
//_debug setMarkerType "hd_objective";

getPos _road