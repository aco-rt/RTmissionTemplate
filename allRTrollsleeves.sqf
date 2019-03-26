private ["_initUniform","_foldedSleeveUniform","_uniformItems"]; // these variables are only visible in this script.

switch (uniform player) do{
	case "RavPat_TS_Camo" : {_foldedSleeveUniform = "RavPat_TS_Camo_SS"};
	case "RavPat_TSD_Camo" : {_foldedSleeveUniform = "RavPat_TSD_Camo_SS"};
	case "RavPat_VER_Camo" : {_foldedSleeveUniform = "RavPat_VER_Camo_SS"};
	case "RavPat_Flec_Camo" : {_foldedSleeveUniform = "RavPat_Flec_Camo_SS"};
	case "RavPat_Camo" : {_foldedSleeveUniform = "RavPat_Camo_SS"};
	case "RavPat_Camo_Cyre" : {_foldedSleeveUniform = "RavPat_Camo_Cyre_SS"};
	case "RavPat2_D_Camo_Cyre" : {_foldedSleeveUniform = "RavPat2_D_Camo_Cyre_SS"};
	case "RavPat2_DPM_Camo_Cyre" : {_foldedSleeveUniform = "RavPat2_DPM_Camo_Cyre_SS"};
	case "RavPat2_W_Camo_Cyre" : {_foldedSleeveUniform = "RavPat2_W_Camo_Cyre_SS"};
	case "RavPat_Arid_Camo" : {_foldedSleeveUniform = "RavPat_Arid_Camo_SS"};
	case "RavPat_Arid_Camo_Cyre" : {_foldedSleeveUniform = "RavPat_Arid_Camo_Cyre_SS"};
	case "RavPat_BW_Camo_Cyre" : {_foldedSleeveUniform = "RavPat_bw_Camo_Cyre_SS"};
	case "RavPat_Des_Camo" : {_foldedSleeveUniform = "RavPat_Des_Camo_SS"};
	case "RavPat_Des_Camo_Cyre" : {_foldedSleeveUniform = "RavPat_Des_Camo_Cyre_SS"};
	case "RavPat_A3Wood_Camo_Cyre" : {_foldedSleeveUniform = "RavPat_A3Wood_Camo_Cyre_SS"};
	case "RavPat_W_Camo_Cyre" : {_foldedSleeveUniform = "RavPat_w_Camo_Cyre_SS"};
	case "U_B_CombatUniform_mcam" : {_foldedSleeveUniform = "U_B_CombatUniform_mcam_vest"};
	case "U_B_CTRG_1" : {_foldedSleeveUniform = "U_B_CTRG_3"};
	case "U_I_CombatUniform" : {_foldedSleeveUniform = "U_I_CombatUniform_shortsleeve"};
	default {hint "Already Folded or You are not wearing Vanilla/RT uniform"};
};

_uniformItems = uniformItems player; // Save uniform contents.
player addUniform _foldedSleeveUniform; // add folded uniform corresponding to the case.
{player addItemToUniform _x;}forEach _uniformItems; //load the previously saved uniform contents.