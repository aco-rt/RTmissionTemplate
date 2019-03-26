//this addAction ["Retreat","retreat.sqf",[objectname]];

_dest = (_this select 3) select 0; // Get the destination.
_dir = random 359; // Get a random direction

// Move the person a few meters away from the destination (in the direction of _dir)

disableUserInput true;

"retreat" cutText ["Retreating", "BLACK", 1, true];
sleep 2;
player SetPos (getPos _dest);
//player SetPos [(getPos _dest select 0)-1*sin(_dir),(getPos _dest select 1)-1*cos(_dir)];
call ace_medical_fnc_treatmentAdvanced_fullHeal;
_rettime = 60;
while {_rettime>0} do {
	_rettime = _rettime - 1;
	titleText [str(_rettime), "PLAIN DOWN", 1];
	sleep 1;
};
titleFadeOut 1;
"retreat" cutFadeout 4;

disableUserInput false;