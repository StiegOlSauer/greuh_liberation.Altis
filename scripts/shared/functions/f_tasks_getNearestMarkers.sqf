params ["_fob"];
private ["_sectorsArray"];

_testedSectors = sectors_capture - blufor_sectors;

//_position = getPos _fob;
_sectorsArray = [sectors_capture - blufor_sectors,[],{_fob distance (getMarkerPos _x)},"ASCEND"] call BIS_fnc_sortBy;
_sectorsArray resize 20;

_sectorsArray