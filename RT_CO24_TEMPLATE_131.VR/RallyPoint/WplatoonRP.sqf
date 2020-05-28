waitUntil {!isNull player}; 

_unit = _this select 0;

_WplatoonRP = ["Wplatoon_rp","Deploy Platoon RP","",
{
_num = player nearEntities ['Man',15]; 
	if(count _num >2) then
		{
			[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
			[40,[],{RP_west SetPos (player modeltoworld [0,3,0]); hint "Rally Point Deployed";"RPMARK_1" setmarkerpos (getpos RP_west);},{hint "Deploying interrupted"},"Deploying Rally point"] call ace_common_fnc_progressBar;
		} 
	else 
		{
			hint 'Need more allies nearby to deploy Rally Point'
		}
},{true}] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _WplatoonRP] call ace_interact_menu_fnc_addActionToObject;
