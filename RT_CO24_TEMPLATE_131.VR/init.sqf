// https://community.bistudio.com/wiki/Event_Scripts

enableSaving[false,false];
enableTeamswitch false;


// Uncomment to turn on the briefing.sqf file
//[] execVM "Briefing.sqf";

// Uncomment to turn on Fire For Effect, or AI calling in artillery if it's on the map
//nul = [] execVM "RYD_FFE\FFE.sqf";

// Uncomment below to disable ALL player-made map markers
//_null = [] execVM "no_markers.sqf";

// Corbec units get their arm patches here.
null = [] execVM "rtpatch\patchscript.sqf";

//This attaches a marker to the rally point at game start
"RPMARK_1" setmarkerpos RP_west;
