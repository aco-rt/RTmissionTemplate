//Scripts run on all players when they join the server, and exists when they respawn.

//AceGrassCutter to all players
_AceGrassCut = ["grass_cut","Cut Grass","",
	{[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{_cutter = "Land_ClutterCutter_large_F" createVehicle [0,0,0];
	 _cutter setPos (getPos player); hint "Grass Cut"},{hint "Cutting interupted"},"Cutting Grass"] call ace_common_fnc_progressBar
	},{true}] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "ACE_Equipment"], _AceGrassCut] call ace_interact_menu_fnc_addActionToObject;

_AceRolledSleeves = ["roll_sleeve","Roll Sleeve","",
	{[player] call ace_common_fnc_goKneeling; [2,[],{execVM "allRTrollsleeves.sqf"},{hint "Rolling Sleeve interupted"},"Rolling Sleeve"] call ace_common_fnc_progressBar
	},{true}] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "ACE_Equipment"], _AceRolledSleeves] call ace_interact_menu_fnc_addActionToObject;

player setSpeaker "NoVoice";

// We set the markers invisible (if you use more then 100 markers, then increase). Or delete if you want them visible
for "_x" from 1 to 100 do
{
	format ["%1",_x] setMarkerAlpha 0;
};

// This sets up ACRE's Babel System.  Change the names of the languages to whatever you want, but make sure the two-letter codes line up.  
//
//To create a translator, add this to unit init (change languages if altered):  this setVariable ["f_languages",["en", "ar"]];	
/* 

f_available_languages = [
["en", "English"],
["ru", "Russian"],
["ar", "Arabic"]
];
{
    _x call acre_api_fnc_babelAddLanguageType;
} forEach f_available_languages;

[] spawn {
    if (!hasInterface) exitWith {};
    if (player != player) then {waitUntil {player == player};};
    if (!alive player) then {waitUntil {alive player};};

    _languagesPlayerSpeaks = player getVariable ["f_languages", []];

    switch (playerside) do {
    case west: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["en"];};
        };
    case east: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
        };
    case independent: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ar"];};
        };
    case civilian: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ar"];};
        };
    };
    _languagesPlayerSpeaks call acre_api_fnc_babelSetSpokenLanguages;
}; */