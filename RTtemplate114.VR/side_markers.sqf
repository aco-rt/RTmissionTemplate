// execVM "side_markers.sqf";
// Simply name a marker side_whatever (example: "west_hq" or "east_objective" or "resistance_car") and the script will make it invisible to everyone but that side.

{
    _x setMarkerAlphaLocal 0
} count (allMapMarkers select {
    private _marker = _x;
    !([east,west,civilian,resistance] select {_marker find toLower str _x != -1} isEqualTo []) && 
    {
        _x find toLower str playerSide == -1
    }
});