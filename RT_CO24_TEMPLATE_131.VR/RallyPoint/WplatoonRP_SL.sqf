waitUntil {!isNull player};

	_unit = _this select 0;

	_WplatoonRP = ["Wplatoon_rp","Deploy Platoon RP","",
	{
	_num = player nearEntities ['Man',15];
	if(leader player == player) then
		{
			if(count _num >2) then
				{
					[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
					[40,[],{RP_west setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"]; wsquadRP1 setVehiclePosition [(player modelToWorld[1.5,1.5,0]), [],0.2, "CAN_COLLIDE"]; wsquadRP2 setVehiclePosition [(player modelToWorld[-1.5,3,0]), [],0.2, "CAN_COLLIDE"]; wsquadRP3 setVehiclePosition [(player modelToWorld[-1.5,1,0]), [],0.2, "CAN_COLLIDE"]; hint "Rally Point Deployed";"RPMARK_1" setmarkerpos player;},{hint "Deploying interrupted"},"Deploying Rally point"] call ace_common_fnc_progressBar
				}
			else
				{
					hint 'Need more allies nearby to deploy Rally Point'
				}
		}
	else
		{
			hint 'Become the Team leader via ACE interactions and try again'
		}
	},{true}] call ace_interact_menu_fnc_createAction;

	[_unit, 1, ["ACE_SelfActions"], _WplatoonRP] call ace_interact_menu_fnc_addActionToObject;
// Units that are not a Team Leader can assume command of the group and then deploy the rallyPoint, and when the Teamleader has recovered, the Teamleader can take command back without loss of rallypoint funcionality.
