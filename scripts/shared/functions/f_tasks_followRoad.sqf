if (!isServer) exitWith {};
//start position (any), target position, wanted distance, direction - true means travel to target, false means travel from target
params ["_startingPoint", "_targetPoint", "_targetDistance", "_direction"];
private ["_currentDistance", "_road", "_roadObjects", "_roadSegment1", "_roadSegment2", "_distance1", "_distance2", "_debug"];

_currentDistance = _startingPoint distance _targetPoint;

_roadObjects = _startingPoint nearRoads 50;
_road = selectRandom _roadObjects;

if (!(_direction)) then {
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
		_currentDistance = (getPos _road) distance _targetPoint;
	};
} else {
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
		_currentDistance = (getPos _road) distance _targetPoint;
	};
};
//_debug = createMarker [format ["markername_%1", (floor (random 500))],(getPos _road)];
//_debug setMarkerShape "ICON";
//_debug setMarkerType "hd_objective";

getPos _road