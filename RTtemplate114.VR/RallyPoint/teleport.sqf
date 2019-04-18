//this addAction ["TeleportText","teleport.sqf",[objectName]];

// Get the destination.
_dest = (_this select 3) select 0;

// Get a random direction
_dir = random 359;

// Move the person about 2 meters away from the destination (in the direction of _dir)

"test" cutText ["", "BLACK", 0.5, true];
sleep 1;

player SetPos [(getPos _dest select 0)-2*sin(_dir),(getPos _dest select 1)-2*cos(_dir)];
"test" cutFadeout 2;