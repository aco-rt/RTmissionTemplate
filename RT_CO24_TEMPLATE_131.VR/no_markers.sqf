if (!isServer) then {

while {true} do {

	{  
           private "_a";
           _a = toArray _x;
           _a resize 15;
            if (toString _a == "_USER_DEFINED #") then {
                   deleteMarker _x;
            }              
       } forEach allMapMarkers;
       sleep 1;
};

};

if (isServer) then {

while {true} do {

	{  
           private "_a";
           _a = toArray _x;
           _a resize 15;
            if (toString _a == "_USER_DEFINED #") then {
                   deleteMarker _x;
            }              
       } forEach allMapMarkers;
       sleep 1;
};

};