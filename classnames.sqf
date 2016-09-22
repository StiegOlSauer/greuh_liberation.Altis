
// For this entire file: classnames that come from mods you don't have will be filtered out and won't cause any issues. You just won't see them ingame.





// *** SUPPORT STUFF ***

// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
if ( isNil "FOB_typename" ) then { FOB_typename = "Land_Cargo_HQ_V1_F"; };
if ( isNil "FOB_box_typename" ) then { FOB_box_typename = "B_Slingload_01_Cargo_F"; };
if ( isNil "FOB_truck_typename" ) then { FOB_truck_typename = "B_Truck_01_box_F"; };
if ( isNil "Arsenal_typename" ) then { Arsenal_typename = "B_supplyCrate_F"; };
if ( isNil "Respawn_truck_typename" ) then { Respawn_truck_typename = "B_Truck_01_medical_F"; };
if ( isNil "huron_typename" ) then { huron_typename = "RHS_CH_47F_10"; };
if ( isNil "ammobox_b_typename" ) then { ammobox_b_typename = "Box_NATO_AmmoVeh_F"; };
if ( isNil "ammobox_o_typename" ) then { ammobox_o_typename = "Box_East_AmmoVeh_F"; };
if ( isNil "ammocrate_o_typename" ) then { ammocrate_o_typename = "Box_East_Wps_F"; };
if ( isNil "opfor_ammobox_transport" ) then { opfor_ammobox_transport = "O_Truck_03_transport_F"; };  // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise thins will break






// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]

infantry_units = [
["B_soldier_F",2,0,0],
["B_soldier_AR_F",3,0,0],
["B_medic_F",3,0,0],
["B_soldier_M_F",3,0,0],
["B_engineer_F",3,0,0],
["B_recon_medic_F",4,0,0],
["B_soldier_AA_F",5,10,0],
["B_soldier_AT_F",5,10,0],
["B_crew_F",1,0,0],
["B_helipilot_F",1,0,0]
];

light_vehicles = [
["B_Quadbike_01_F",0,0,1],
["CUP_O_UAZ_AGS30_RU",0,5,2],
["CUP_B_LR_Special_Des_CZ_D",0,5,2],
["rhs_tigr_sts_vv",0,15,5],
["CUP_O_UAZ_METIS_RU",0,30,5],
["CUP_O_BRDM2_CHDKZ",0,25,5],
["CUP_O_BRDM2_ATGM_CHDKZ",0,50,5],
["rhs_btr80a_vv",0,90,10],
["B_Boat_Transport_01_F",0,0,2],
["B_Boat_Armed_01_minigun_F",0,30,10]
];

heavy_vehicles = [
["rhs_bmd1p",0,45,10],
["rhs_bmp1p_msv",0,55,15],
["rhs_bmd2m",0,135,10],
["rhs_bmp2d_tv",0,100,15],
["rhs_bmp3m_msv",0,160,15],
["CUP_O_ZSU23_TK",0,90,20],
["rhs_sprut_vdv",0,160,30],
["rhs_t72ba_tv",0,200,35],
["rhs_t72bc_tv",0,270,35],
["rhs_t80a",0,300,40],
["rhs_t90_tv",0,350,35],
["rhs_t80um",0,380,40],
["rhs_t72bd_tv",0,420,35],
["rhs_2s3_tv",0,300,45],
["RHS_BM21_MSV_01",0,350,55]
];

air_vehicles = [
["CUP_C_DC3_CIV",0,0,10],
["B_Heli_Light_01_F",0,0,15],
["B_Heli_Light_01_armed_F",0,55,15],
["RHS_Mi8mt_vvs",0,5,15],
["RHS_Mi8AMTSh_vvs",0,150,20],
["RHS_Mi24P_CAS_vvs",0,200,30],
["RHS_Mi24V_AT_vvs",0,200,30],
["RHS_Ka52_vvsc",0,400,40],
["RHS_Su25SM_vvs",0,200,35],
["RHS_CH_47F_10",0,50,30],
["CUP_O_SU34_AGM_RU",0,400,35]
];

static_vehicles = [
["rhs_KORD_high_INS",0,10,0],
["RHS_NSV_TriPod_MSV",0,20,0],
["RHS_AGS30_TriPod_MSV",0,20,0],
["rhs_Igla_AA_pod_msv",0,25,0],
["rhs_Metis_9k115_2_msv",0,30,0],
["rhs_2b14_82mm_msv",0,60,0]
];

buildings = [
["ACE_Wheel",0,0,0],
["Land_CncBarrierMedium4_F",0,0,0],
["Land_CncWall4_F",0,0,0],
["Land_CncShelter_F",0,0,0],
["Land_HBarrier_5_F",0,0,0],
["Land_HBarrierBig_F",0,0,0],
["Land_HBarrierWall6_F",0,0,0],
["Land_HBarrierWall_corner_F",0,0,0],
["Land_HBarrierTower_F",0,0,0],
["Land_BagBunker_Large_F",0,0,0],
["Land_BagBunker_Small_F",0,0,0],
["Land_BagBunker_Tower_F",0,0,0],
["Land_PortableLight_single_F",0,0,0],
["CamoNet_BLUFOR_open_F",0,0,0],
["CamoNet_BLUFOR_big_F",0,0,0],
["Land_Cargo_House_V1_F",0,0,0],
["Land_Cargo_Patrol_V1_F",0,0,0],
["Flag_NATO_F",0,0,0],
["Land_HelipadSquare_F",0,0,0],
["Land_Razorwire_F",0,0,0],
["Land_BagFence_Round_F",0,0,0],
["Land_ToolTrolley_02_F",0,0,0],
["Land_WeldingTrolley_01_F",0,0,0],
["Land_GasTank_02_F",0,0,0],
["Land_Workbench_01_F",0,0,0],
["Land_WaterTank_F",0,0,0],
["Land_WaterBarrel_F",0,0,0],
["Land_MetalCase_01_large_F",0,0,0],
["CargoNet_01_box_F",0,0,0],
["Land_CampingChair_V1_F",0,0,0],
["Land_CampingChair_V2_F",0,0,0],
["Land_CampingTable_F",0,0,0],
["MapBoard_altis_F",0,0,0],
["Land_Metal_rack_Tall_F",0,0,0],
["PortableHelipadLight_01_blue_F",0,0,0],
["Land_DieselGroundPowerUnit_01_F",0,0,0],
["Land_Pallet_MilBoxes_F",0,0,0],
["Land_PaperBox_open_full_F",0,0,0],
["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
[Arsenal_typename,10,0,0],
[Respawn_truck_typename,20,0,5],
[FOB_box_typename,30,50,0],
[FOB_truck_typename,30,50,5],
["C_Offroad_01_repair_F",5,0,2],
["B_Truck_01_Repair_F",10,0,5],
["B_Truck_01_fuel_F",10,0,5],
["B_Truck_01_ammo_F",10,0,5],
["B_Slingload_01_Repair_F",5,0,0],
["B_Slingload_01_Fuel_F",5,0,0],
["B_Slingload_01_Ammo_F",5,0,0],
["Box_East_Wps_F",0,20,0],
["Box_NATO_AmmoVeh_F",0,154,0],
["Box_East_AmmoVeh_F",0,115,0]
];

// Pre-made squads for the commander build menu
blufor_squad_inf_light = [ "B_Soldier_SL_F","B_Soldier_TL_F","B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_GL_F","B_medic_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F"];
blufor_squad_inf = [ "B_Soldier_SL_F","B_Soldier_TL_F","B_Soldier_AR_F","B_HeavyGunner_F","B_medic_F","B_Soldier_GL_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_soldier_M_F","B_Sharpshooter_F" ];
blufor_squad_at = [ "B_Soldier_SL_F","B_soldier_AT_F","B_soldier_AT_F","B_soldier_AT_F","B_medic_F","B_soldier_F" ];
blufor_squad_aa = [ "B_Soldier_SL_F","B_soldier_AA_F","B_soldier_AA_F","B_soldier_AA_F","B_medic_F","B_soldier_F" ];
blufor_squad_recon = [ "B_recon_TL_F","B_recon_F","B_recon_exp_F","B_recon_medic_F","B_recon_LAT_F","B_recon_LAT_F","B_recon_M_F","B_Recon_Sharpshooter_F","B_recon_F"];
blufor_squad_para = [ "B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F" ];

// [ squad, manpower, ammo, fuel ]
// The game doesn't calculate the actual cost of the squads when they're being bought and instead uses the costs below (especially ammo),
// but once they're spawned the cost of each individual unit will be used to calculate caps (especially manpower and fuel)
squads = [
[blufor_squad_inf_light,20,0,0],
[blufor_squad_inf,30,0,0],
[blufor_squad_at,20,25,0],
[blufor_squad_aa,20,25,0],
[blufor_squad_recon,25,0,0],
[blufor_squad_para,20,0,0]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [ "B_UAV_01_F","B_UAV_02_F","B_UAV_02_CAS_F","B_UGV_01_F","B_UGV_01_rcws_F" ];

// Vehicles unlocked through military base control. The game will pick which base unlocks which at the start of each new campaign.
elite_vehicles = ["rhs_bmd2m","rhs_bmp3m_msv","rhs_sprut_vdv","rhs_t72bc_tv","rhs_t80a","rhs_t90_tv","rhs_t80um","rhs_t72bd_tv","RHS_BM21_MSV_01","RHS_Ka52_vvsc", "CUP_O_SU34_AGM_RU"];

// Everything the AI troups should be able to resupply from
ai_resupply_sources = [ Respawn_truck_typename, huron_typename, Arsenal_typename, "B_Slingload_01_Ammo_F", "B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F", "JNS_Skycrane_Pod_Ammo_BLU_Black" ];

// Everything that can resupply other vehicles
vehicle_repair_sources = [ "B_Slingload_01_Repair_F", "JNS_Skycrane_Pod_Repair_BLU_Black" ];
vehicle_rearm_sources = [ "JNS_Skycrane_Pod_Ammo_BLU_Black" ];
vehicle_refuel_sources = [ "B_Slingload_01_Fuel_F" ];

// Commander
commander_classname = "B_officer_F";

// Standard crewman to use when default crew won't work (saved AAF vehicles for example)
crewman_classname = "B_crew_F";







// *** BADDIES ***

// All OPFOR infantry
opfor_sentry = "LOP_SLA_Infantry_Rifleman_2";
opfor_rifleman = "LOP_SLA_Infantry_Rifleman";
opfor_grenadier = "LOP_SLA_Infantry_GL";
opfor_squad_leader = "LOP_SLA_Infantry_SL";
opfor_team_leader = "LOP_SLA_Infantry_TL";
opfor_machinegunner = "CUP_O_sla_Soldier_AR";		
opfor_heavygunner = "LOP_SLA_Infantry_MG";
opfor_medic = "LOP_SLA_Infantry_Corpsman";
opfor_rpg = "LOP_SLA_Infantry_AT";
opfor_at = "LOP_SLA_Infantry_AT_Asst";
opfor_aa = "LOP_SLA_Infantry_AA";
opfor_officer = "LOP_SLA_Infantry_Officer";
opfor_marksman = "LOP_SLA_Infantry_Marksman";
opfor_sharpshooter = "CUP_O_SLA_Sniper_SVD_Night";
opfor_sniper = "CUP_O_sla_Sniper";
opfor_engineer = "LOP_SLA_Infantry_Engineer";
opfor_crew = ["CUP_O_TK_Engineer","CUP_O_TK_Crew","LOP_TKA_Infantry_Crewman"];

// Militia infantry. It's only classnames the game will pick from randomly
militia_squad = [ "B_G_Soldier_SL_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_engineer_F","B_G_Soldier_exp_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","b_g_soldier_unarmed_f","B_G_Sharpshooter_F","b_g_survivor_F","B_G_Soldier_TL_F"];

// Militia vehicles to choose from
militia_vehicles = ["CUP_I_BRDM2_TK_Gue","CUP_I_BRDM2_TK_Gue","I_MU_mercs_Offroad_01_armed_F","CUP_I_Datsun_PK_TK","CUP_I_Datsun_PK_TK_Random","B_G_Offroad_01_armed_F","CUP_I_Datsun_PK_TK", "LOP_SLA_UAZ_DshKM","CUP_O_Ural_ZU23_TKA","CUP_O_LR_SPG9_TKA", "LOP_SLA_UAZ_DshKM", "LOP_ISTS_Landrover_M2", "CUP_O_UAZ_SPG9_TKA"];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles = ["CUP_B_LAV25_USMC", "rhsusf_m113d_usarmy_M240","rhsusf_m113d_usarmy_M240","CUP_B_HMMWV_TOW_USA","CUP_B_HMMWV_DSHKM_GPK_ACR","CUP_B_HMMWV_AGS_GPK_ACR","CUP_B_HMMWV_DSHKM_GPK_ACR","CUP_I_M163_RACS", "CUP_B_Dingo_CZ_Des", "rhsusf_m113d_usarmy_MK19","CUP_B_HMMWV_AGS_GPK_ACR", "CUP_B_Jackal2_L2A1_GB_D", "CUP_B_Jackal2_GMG_GB_D", "rhsusf_m1025_d_Mk19", "rhsusf_m1025_d_s_Mk19", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M2_GPK_USA", "rhsusf_m1025_d_m2", "rhsusf_m1025_d_s_m2", "CUP_B_M1126_ICV_M2_Desert",  "CUP_B_M1128_MGS_Desert"];
// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity = ["LOP_AFR_BTR60","CUP_B_HMMWV_DSHKM_GPK_ACR", "CUP_B_HMMWV_DSHKM_GPK_ACR", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M2_GPK_USA", "rhsusf_m1025_d_m2", "rhsusf_m1025_d_s_m2", "rhsusf_m1025_d_s_m2"];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles = ["CUP_B_LAV25_USMC", "CUP_B_LAV25M240_USMC", "RHS_M2A2", "RHS_M2A2_BUSKI", "LOP_IA_M1A1_AIM_D", "rhsusf_m1a1fep_d", "rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a1aimd_usarmy", "rhsusf_m113d_usarmy_M240","CUP_B_HMMWV_TOW_USA","CUP_B_HMMWV_TOW_USA","CUP_B_UH1Y_GUNSHIP_USMC", "CUP_B_UH1Y_GUNSHIP_USMC","RHS_AH1Z_GS","CUP_I_UH60L_FFV_RACS", "RHS_AH64D","CUP_I_M163_RACS", "CUP_B_HMMWV_AGS_GPK_ACR","CUP_B_HMMWV_DSHKM_GPK_ACR", "CUP_B_Dingo_CZ_Des",  "CUP_B_Dingo_CZ_Des", "rhsusf_m113d_usarmy_MK19", "CUP_B_Jackal2_L2A1_GB_D", "CUP_B_Jackal2_GMG_GB_D", "rhsusf_m1025_d_Mk19", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_M1114_USMC", "rhsusf_m1025_d_m2", "rhsusf_m1025_d_s_m2","O_Truck_03_covered_F", "O_Truck_03_transport_F", "CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M2_GPK_USA", "rhsusf_m1025_d_m2", "rhsusf_m1025_d_s_m2","O_Truck_03_covered_F", "O_Truck_03_transport_F","CUP_B_HMMWV_TOW_USA","CUP_I_M163_RACS", "CUP_B_M1128_MGS_Desert_Slat", "CUP_B_M1128_MGS_Desert", "CUP_B_M1135_ATGMV_Desert", "CUP_B_M1126_ICV_MK19_Desert", "CUP_B_M1126_ICV_M2_Desert"];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity = ["CUP_B_HMMWV_AGS_GPK_ACR","CUP_B_HMMWV_DSHKM_GPK_ACR", "CUP_B_Dingo_CZ_Des", "rhsusf_m113d_usarmy_MK19", "CUP_B_Jackal2_L2A1_GB_D", "CUP_B_Jackal2_GMG_GB_D", "rhsusf_m1025_d_Mk19", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M2_GPK_USA", "rhsusf_m1025_d_m2", "rhsusf_m1025_d_s_m2","O_Truck_03_covered_F","CUP_I_UH60L_FFV_RACS", "O_Truck_03_transport_F", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M2_GPK_USA", "rhsusf_m1025_d_m2", "rhsusf_m1025_d_s_m2","O_Truck_03_covered_F", "O_Truck_03_transport_F","CUP_B_HMMWV_TOW_USA"];

// All the vehicles that can spawn as battlegroup members (see above) and hold 8 soldiers as passengers.
// If something can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports = ["rhsusf_m113d_usarmy_MK19","rhsusf_m113d_usarmy_M240","O_Truck_03_covered_F","CUP_I_UH60L_FFV_RACS", "O_Truck_03_transport_F", "CUP_B_UH1Y_GUNSHIP_USMC"];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers = ["CUP_B_UH1Y_GUNSHIP_USMC","RHS_AH1Z_GS","RHS_AH64D","CUP_I_UH60L_FFV_RACS"];

// Opfor attack aircrafts to choose from
opfor_air = ["CUP_B_AV8B_Hydra19"];

// Vehicles to be used in secondary objectives
opfor_mrap = "O_MRAP_02_F";
opfor_mrap_armed = "rhsusf_m1025_d_m2";
opfor_transport_helo = "O_Heli_Transport_04_bench_F";
opfor_transport_truck = "O_Truck_03_covered_F";
opfor_fuel_truck = "O_Truck_03_fuel_F";
opfor_ammo_truck = "O_Truck_03_ammo_F";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "Flag_CSAT_F";




// Civilians to randomly choose from
civilians = ["C_man_1","C_man_polo_6_F","C_man_polo_3_F","C_man_polo_2_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_1_F","C_man_p_beggar_F","C_man_1_2_F","C_man_p_fugitive_F","C_man_hunter_1_F","C_journalist_F","C_man_shorts_2_F","C_man_w_worker_F"];
civilian_vehicles = [ "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_Offroad_01_F", "C_SUV_01_F", "C_Van_01_transport_F", "C_Van_01_box_F", "C_Van_01_fuel_F", "C_Quadbike_01_F" ];

//allowed weapons
GRLIB_whitelisted_from_arsenal = [
"CUP_glaunch_M79",
"rhs_weap_pkm",
"hlc_rifle_ak74_dirty",
"hlc_rifle_ak74_dirty2",
"hlc_rifle_aks74u",
"rhs_weap_svds",
"hlc_rifle_M14",
"RH_M16a1",
"RH_M16A1gl",
"RH_M16A2",
"rhs_weap_akm",
"rhs_weap_akm_gp25",
"RH_m9",
"RH_mak",
"RH_m1911",
"CUP_launch_RPG18",
"rhs_weap_rpg7",
"rhs_weap_M136_hedp"
];

//all weapons
GRLIB_arsenal_all = [];

GRLIB_allowed_weapons = [
"CUP_arifle_AK107",
"CUP_arifle_CZ805_A1",
"CUP_arifle_CZ805_A2",
"CUP_arifle_CZ805_B",
"CUP_arifle_CZ805_B_GL",
"CUP_arifle_CZ805_GL",
"CUP_arifle_Mk16_CQC_EGLM",
"CUP_arifle_Mk16_CQC_FG",
"CUP_arifle_Mk16_STD_EGLM",
"CUP_arifle_Mk16_STD_FG",
"CUP_arifle_Mk20",
"CUP_arifle_RPK74M",
"CUP_arifle_Sa58RIS1",
"CUP_arifle_Sa58RIS2",
"CUP_arifle_Sa58RIS2_gl",
"CUP_glaunch_6G30",
"CUP_glaunch_Mk13",
"CUP_hgun_Compact",
"CUP_hgun_Duty",
"CUP_hgun_PB6P9",
"CUP_hgun_Phantom",
"CUP_hgun_TaurusTracker455_gold",
"CUP_launch_M47",
"CUP_launch_MAAWS",
"CUP_launch_Metis",
"CUP_lmg_UK59",
"CUP_sgun_AA12",
"CUP_sgun_Saiga12K",
"CUP_smg_bizon",
"CUP_srifle_AS50",
"CUP_srifle_CZ550",
"CUP_srifle_CZ550_rail",
"CUP_srifle_CZ750",
"CUP_srifle_ksvk",
"CUP_srifle_LeeEnfield",
"CUP_srifle_LeeEnfield_rail",
"arifle_SPAR_03_blk_F",
"arifle_SPAR_01_GL_blk_F",
"hgun_ACPC2_F",
"hgun_P07_F",
"hgun_PDW2000_F",
"hgun_Pistol_heavy_01_F",
"hlc_lmg_M249E2",
"hlc_lmg_m249para",
"hlc_lmg_m60",
"hlc_lmg_M60E4",
"hlc_lmg_minimi",
"hlc_lmg_minimi_railed",
"hlc_lmg_minimipara",
"hlc_m249_pip1",
"hlc_m249_pip2",
"hlc_m249_pip3",
"hlc_m249_pip4",
"hlc_lmg_mk48",
"hlc_lmg_mk48mod1",
"hlc_rifle_aek971",
"hlc_rifle_aek971_mtk",
"hlc_rifle_ak12",
"hlc_rifle_ak12GL",
"hlc_rifle_ak47",
"hlc_rifle_ak74",
"hlc_rifle_akm",
"hlc_rifle_akmgl",
"hlc_rifle_aks74",
"hlc_rifle_aks74_GL",
"hlc_rifle_ak74_MTK",
"hlc_rifle_akm_MTK",
"hlc_rifle_aks74_MTK",
"hlc_rifle_awcovert",
"hlc_rifle_awcovert_BL",
"hlc_rifle_awcovert_FDE",
"hlc_rifle_awmagnum",
"hlc_rifle_awmagnum_BL",
"hlc_rifle_awmagnum_FDE",
"hlc_rifle_bcmjack",
"hlc_rifle_Bushmaster300",
"hlc_rifle_c1A1",
"hlc_rifle_Colt727",
"hlc_rifle_Colt727_GL",
"hlc_rifle_CQBR",
"hlc_rifle_FAL5061",
"hlc_rifle_FAL5061Rail",
"hlc_rifle_falosw",
"hlc_rifle_g3a3",
"hlc_rifle_g3a3ris",
"hlc_rifle_g3a3v",
"hlc_rifle_g3ka4",
"HLC_Rifle_g3ka4_GL",
"hlc_rifle_g3sg1",
"hlc_rifle_hk33a2",
"hlc_rifle_hk33a2RIS",
"hlc_rifle_hk51",
"hlc_rifle_hk53",
"hlc_rifle_hk53RAS",
"hlc_rifle_honeybadger",
"hlc_rifle_L1A1SLR",
"hlc_rifle_LAR",
"hlc_rifle_M14_Bipod",
"hlc_rifle_M14_Rail",
"hlc_rifle_m14dmr",
"hlc_rifle_m14sopmod",
"hlc_rifle_M21",
"hlc_rifle_M4",
"hlc_rifle_m4m203",
"hlc_rifle_osw_GL",
"hlc_rifle_psg1A1",
"hlc_rifle_PSG1A1_RIS",
"hlc_rifle_rpk",
"hlc_rifle_rpk74n",
"hlc_rifle_RPK12",
"hlc_rifle_RU556",
"hlc_rifle_RU5562",
"hlc_rifle_saiga12k",
"hlc_rifle_SAMR",
"hlc_rifle_slr107u",
"hlc_rifle_slr107u_MTK",
"hlc_rifle_SLR",
"hlc_rifle_SLRchopmod",
"hlc_rifle_STG58F",
"hlc_rifle_vendimus",
"hlc_smg_9mmar",
"hlc_smg_mp510",
"hlc_smg_mp5a2",
"hlc_smg_mp5a3",
"hlc_smg_mp5a4",
"hlc_smg_mp5k",
"hlc_smg_mp5k_PDW",
"hlc_smg_MP5N",
"hlc_smg_mp5sd5",
"hlc_smg_mp5sd6",
"launch_B_Titan_F",
"launch_B_Titan_short_F",
"launch_I_Titan_F",
"launch_I_Titan_short_F",
"launch_NLAW_F",
"launch_O_Titan_F",
"launch_O_Titan_short_F",
"launch_RPG32_F",
"RH_ar10",
"RH_hb_b",
"RH_Hk416",
"RH_hk416_des",
"RH_Hk416c",
"RH_hk416c_des",
"RH_Hk416s",
"RH_hk416s_des",
"RH_m110",
"RH_M16A2gl",
"RH_M16A3",
"RH_M16A6",
"RH_M27IAR",
"RH_M27IAR_des",
"RH_M4_moe",
"RH_M4_moe_b",
"RH_M4A6",
"RH_M4m_b",				
"RH_M4m_g",				
"RH_M4sbr_b",				
"RH_M4sbr_g",								
"RH_Mk12mod1",				
"RH_Mk12mod1_des",
"rhs_weap_ak103",			
"rhs_weap_ak103_gp25",
"rhs_weap_ak103_gp25_npz",	
"rhs_weap_ak103_npz",		
"rhs_weap_ak104",			
"rhs_weap_ak104_npz",		
"rhs_weap_ak105",			
"rhs_weap_ak105_npz",		
"rhs_weap_ak74m",			
"rhs_weap_ak74m_2mag",		
"rhs_weap_ak74m_2mag_npz",	
"rhs_weap_ak74m_camo",		
"rhs_weap_ak74m_desert",				
"rhs_weap_ak74m_desert_npz",			
"rhs_weap_ak74m_gp25",					
"rhs_weap_ak74m_gp25_npz",				
"rhs_weap_ak74m_npz",					
"rhs_weap_ak74m_fullplum",				
"rhs_weap_ak74m_fullplum_npz",
"rhs_weap_ak74m_fullplum_gp25",
"rhs_weap_ak74m_fullplum_gp25_npz",
"rhs_weap_akms_gp25",
"rhs_weap_aks74un",			
"rhs_weap_asval",						
"rhs_weap_asval_npz",
"rhs_weap_asval_grip",
"rhs_weap_fgm148",						
"rhs_weap_fim92",						
"rhs_weap_igla",						
"rhs_weap_M136",						
"rhs_weap_M136_hp",					
"rhs_weap_m14ebrri",					
"rhs_weap_m16a4",						
"rhs_weap_m16a4_carryhandle_M203",		
"rhs_weap_m24sws",
"rhs_weap_m240B_CAP",
"rhs_weap_m240G",
"rhs_weap_m32",						
"rhs_weap_M320",
"rhs_weap_M107",
"rhs_weap_M107_d",						
"rhs_weap_m4_carryhandle",				
"rhs_weap_m4_carryhandle_pmag",							
"rhs_weap_m4_m203",					
"rhs_weap_m4_m203S",					
"rhs_weap_m4_m320",					
"rhs_weap_m4a1_carryhandle",		
"rhs_weap_m4a1_carryhandle_m203",		
"rhs_weap_m4a1_carryhandle_m203S",		
"rhs_weap_m4a1_carryhandle_pmag",	
"rhs_weap_m4a1_m320",
"rhs_weap_m4a1_blockII_bk",
"rhs_weap_m4a1_blockII_KAC",
"rhs_weap_m4a1_blockII_M203",
"rhs_weap_mk18_bk",
"rhs_weap_mk18_KAC",
"rhs_weap_mk18_m320",
"rhs_weap_hk416d145_m320",
"rhs_weap_M590_5RD",		
"rhs_weap_M590_8RD",		
"rhs_weap_makarov_pmm",	
"rhs_weap_pkp",			
"rhs_weap_pya",			
"rhs_weap_rpg26",			
"rhs_weap_rshg2",			
"rhs_weap_smaw",			
"rhs_weap_smaw_green",		
"rhs_weap_sr25",			
"rhs_weap_sr25_ec",		
"rhs_weap_svdp",			
"rhs_weap_svdp_npz",		
"rhs_weap_svdp_wd",		
"rhs_weap_svdp_wd_npz",	
"rhs_weap_svds_npz",	
"rhs_weap_vss",
"rhs_weap_vss_grip",
"rhs_weap_tr8",			
"rhs_weap_XM2010",			
"rhs_weap_XM2010_d",		
"rhs_weap_XM2010_sa",		
"rhsusf_weap_m9",
"rhsusf_weap_glock17g4",
"rhsusf_weap_m1911a1",
"SMG_01_F",
"SMG_02_F",	
"srifle_DMR_02_camo_F",
"srifle_DMR_02_F",
"srifle_DMR_03_multicam_F",
"srifle_DMR_04_F",	
"srifle_DMR_06_camo_F",
"srifle_DMR_06_olive_F",
"srifle_GM6_camo_F",
"srifle_LRR_camo_F"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
GRLIB_blacklisted_from_arsenal = [
"B_Respawn_Sleeping_bag_blue_F",
"B_Respawn_Sleeping_bag_brown_F",
"B_Respawn_TentDome_F",
"B_Respawn_Sleeping_bag_F",
"B_Respawn_TentA_F",
"I_GMG_01_A_weapon_F",
"O_GMG_01_A_weapon_F",
"B_GMG_01_A_weapon_F",
"I_HMG_01_A_weapon_F",
"B_HMG_01_A_weapon_F",
"O_HMG_01_A_weapon_F",
"O_HMG_01_weapon_F",
"B_HMG_01_weapon_F",
"I_HMG_01_weapon_F",
"I_HMG_01_high_weapon_F",
"O_HMG_01_high_weapon_F",
"B_HMG_01_high_weapon_F",
"O_GMG_01_weapon_F",
"I_GMG_01_weapon_F",
"B_GMG_01_weapon_F",
"B_GMG_01_high_weapon_F",
"I_GMG_01_high_weapon_F",
"O_GMG_01_high_weapon_F",
"I_Mortar_01_support_F",
"B_Mortar_01_support_F",
"O_Mortar_01_support_F",
"B_Mortar_01_weapon_F",
"O_Mortar_01_weapon_F",
"I_Mortar_01_weapon_F",
"B_HMG_01_support_F",
"O_HMG_01_support_F",
"I_HMG_01_support_F",
"B_HMG_01_support_high_F",
"O_HMG_01_support_high_F",
"I_HMG_01_support_high_F",
"B_AA_01_weapon_F",
"O_AA_01_weapon_F",
"I_AA_01_weapon_F",
"B_AT_01_weapon_F",
"O_AT_01_weapon_F",
"I_AT_01_weapon_F",
"I_UAV_01_backpack_F",
"B_UAV_01_backpack_F",
"O_UAV_01_backpack_F",
"RHS_Podnos_Bipod_Bag",
"RHS_Podnos_Gun_Bag",
"RHS_Metis_Gun_Bag",
"RHS_Metis_Tripod_Bag",
"RHS_AGS30_Tripod_Bag",
"RHS_AGS30_Gun_Bag",
"RHS_DShkM_Gun_Bag",
"RHS_DShkM_TripodHigh_Bag",
"RHS_DShkM_TripodLow_Bag",
"RHS_Kord_Tripod_Bag",
"RHS_Kord_Gun_Bag",
"RHS_M2_Gun_Bag",
"RHS_M2_Tripod_Bag",
"rhs_M252_Gun_Bag",
"rhs_M252_Bipod_Bag",
"RHS_M2_MiniTripod_Bag",
"RHS_Mk19_Gun_Bag",
"RHS_Mk19_Tripod_Bag",
"RHS_NSV_Tripod_Bag",
"RHS_NSV_Gun_Bag",
"RHS_SPG9_Gun_Bag",
"RHS_SPG9_Tripod_Bag",
"rhs_Tow_Gun_Bag",
"rhs_TOW_Tripod_Bag"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config = [
	[ "B_Truck_01_transport_F", -6.5, [0,	-0.4,	0.4], [0,	-2.1,	0.4], [0,	-3.8,	0.4] ],
	[ "B_Truck_01_covered_F", -6.5, [0,	-0.4,	0.4], [0,	-2.1,	0.4], [0,	-3.8,	0.4] ],
	[ "O_Truck_03_transport_F", -6.5, [0,	-0.8,	0.4], [0,	-2.4,	0.4], [0,	-4.0,	0.4] ],
	[ "O_Truck_03_covered_F", -6.5, [0,	-0.8,	0.4], [0,	-2.4,	0.4], [0,	-4.0,	0.4] ],
	[ "B_Heli_Transport_03_F", -7.5, [0,	2.2,	-1], [0,	0.8,	-1], [0,	-1.0, -1] ],
	[ "B_Heli_Transport_03_unarmed_F", -7.5, [0,	2.2,	-1], [0,	0.8,	-1], [0,	-1.0, -1] ],
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ],
	[ "I_Heli_Transport_02_F", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];




// !!
// Do not edit below this point!!
// Only boring technical stuff
// !!






elite_vehicles = elite_vehicles + elite_vehicles_extension;
infantry_units = infantry_units + infantry_units_extension;
light_vehicles = light_vehicles + light_vehicles_extension;
heavy_vehicles = heavy_vehicles + heavy_vehicles_extension;
air_vehicles = air_vehicles + air_vehicles_extension;
static_vehicles = static_vehicles + static_vehicles_extension;
buildings = buildings + buildings_extension;
support_vehicles = support_vehicles + support_vehicles_extension;
infantry_units = [ infantry_units ] call F_filterMods;
light_vehicles = [ light_vehicles ] call F_filterMods;
heavy_vehicles = [ heavy_vehicles ] call F_filterMods;
air_vehicles = [ air_vehicles ] call F_filterMods;
support_vehicles = [ support_vehicles ] call F_filterMods;
static_vehicles = [ static_vehicles ] call F_filterMods;
buildings = [ buildings ] call F_filterMods;
build_lists = [[],infantry_units,light_vehicles,heavy_vehicles,air_vehicles,static_vehicles,buildings,support_vehicles,squads];
militia_squad = [ militia_squad , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
militia_vehicles = [ militia_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_vehicles = [ opfor_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_vehicles_low_intensity = [ opfor_vehicles_low_intensity , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_battlegroup_vehicles = [ opfor_battlegroup_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_battlegroup_vehicles_low_intensity = [ opfor_battlegroup_vehicles_low_intensity , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_troup_transports = [ opfor_troup_transports , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_choppers = [ opfor_choppers , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_air = [ opfor_air , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
civilians = [ civilians , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
civilian_vehicles = [ civilian_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
military_alphabet = ["Alushta","Bratsk","Chita","Divnogorsk","Elnya","Freiburg","Grozny","Hotel","India","Juliet","Kilo","Lima","Mike","Novosibirsk","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-Ray","Yankee","Zulu", "Alpha-2", "Bravo-2", "Charlie-2", "Delta-2", "Echo-2", "Foxtrot-2", "Golf-2","Hotel-2","India-2","Juliet-2","Kilo-2","Lima-2","Mike-2","November-2","Oscar-2","Papa-2","Quebec-2","Romeo-2","Sierra-2","Tango-2","Uniform-2","Victor-2","Whiskey-2","X-Ray-2","Yankee-2","Zulu-2","You should really reconsider a few life choices if you build more than 52 FOBs."];
land_vehicles_classnames = (opfor_vehicles + militia_vehicles);
opfor_squad_low_intensity = [opfor_team_leader,opfor_machinegunner,opfor_medic,opfor_rpg,opfor_sentry,opfor_sentry,opfor_sentry,opfor_sentry];
opfor_squad_8_standard = [opfor_squad_leader,opfor_team_leader,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_marksman,opfor_grenadier,opfor_rpg];
opfor_squad_8_infkillers = [opfor_squad_leader,opfor_machinegunner,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_marksman,opfor_sharpshooter,opfor_sniper];
opfor_squad_8_tankkillers = [opfor_squad_leader,opfor_medic,opfor_machinegunner,opfor_rpg,opfor_rpg,opfor_at,opfor_at,opfor_at];
opfor_squad_8_airkillers = [opfor_squad_leader,opfor_medic,opfor_machinegunner,opfor_rpg,opfor_rpg,opfor_aa,opfor_aa,opfor_aa];
all_resistance_troops = [] + militia_squad;
all_hostile_classnames = (land_vehicles_classnames + opfor_air + opfor_choppers + opfor_troup_transports + opfor_vehicles_low_intensity);
{ land_vehicles_classnames pushback (_x select 0); } foreach (heavy_vehicles + light_vehicles);
air_vehicles_classnames = [] + opfor_choppers;
{ air_vehicles_classnames pushback (_x select 0); } foreach air_vehicles;
markers_reset = [99999,99999,0];
zeropos = [0,0,0];
squads_names = [ localize "STR_LIGHT_RIFLE_SQUAD", localize "STR_RIFLE_SQUAD", localize "STR_AT_SQUAD", localize "STR_AA_SQUAD",  localize "STR_RECON_SQUAD", localize "STR_PARA_SQUAD" ];
boats_names = [ "B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F" ];
ammobox_transports_typenames = [];
{ ammobox_transports_typenames pushback (_x select 0) } foreach box_transport_config;
ammobox_transports_typenames = [ ammobox_transports_typenames , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
elite_vehicles = [ elite_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
original_resistance = [ "B_G_Soldier_SL_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_engineer_F","B_G_Soldier_exp_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","b_g_soldier_unarmed_f","B_G_Sharpshooter_F","b_g_survivor_F","B_G_Soldier_TL_F"];
opfor_infantry = [opfor_sentry,opfor_rifleman,opfor_grenadier,opfor_squad_leader,opfor_team_leader,opfor_marksman,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_rpg,opfor_at,opfor_aa,opfor_officer,opfor_sharpshooter,opfor_sniper,opfor_engineer];
GRLIB_intel_table = "Land_CampingTable_small_F";
GRLIB_intel_chair = "Land_CampingChair_V2_F";
GRLIB_intel_file = "Land_File1_F";
GRLIB_intel_laptop = "Land_Laptop_device_F";
GRLIB_ignore_colisions_when_building = [
	"Land_Flush_Light_red_F",
	"Land_Flush_Light_green_F",
	"Land_Flush_Light_yellow_F",
	"Land_runway_edgelight",
	"Land_runway_edgelight_blue_F",
	"Land_HelipadSquare_F",
	"Sign_Sphere100cm_F",
	"TMR_Autorest_Georef",
	"Land_ClutterCutter_large_F"
];