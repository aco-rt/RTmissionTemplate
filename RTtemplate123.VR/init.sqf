enableSaving[false,false];
enableTeamswitch false;

// Uncomment to turn on the briefing.sqf file
//[] execVM "Briefing.sqf";

// Uncomment to turn on Fire For Effect, or AI calling in artillery if it's on the map
//nul = [] execVM "RYD_FFE\FFE.sqf";

// Corbec units get their arm patches here.
null = [] execVM "rtpatch\patchscript.sqf";

//This attaches a marker to the rally point at game start
"RPMARK_1" setmarkerpos getpos RP_west;

////////FlareFix////////
// flare intensity, replace 30 with desired value
al_flare_intensity = 50;
publicvariable "al_flare_intensity";

// flare range, replace 500 with desired value
al_flare_range = 200;
publicvariable "al_flare_range";

al_mortar_flare_intensity = 90;
publicvariable "al_mortar_flare_intensity";

al_mortar_flare_range = 500;
publicvariable "al_mortar_flare_range";

// If you want to use FLARE FIX do not edit or remove lines bellow
player addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[[_al_flare],"AL_flare_fix\al_flare_enhance.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;}];

// FOR vanilla mortars place this line inside their init field.
// this addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[[_al_flare],"AL_flare_fix\al_flare_enhance.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;}];

////////EndFlareFix////////




