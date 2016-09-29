GRLIB_save_key = "GREUH_LIBERATION_SAVEGAME";	// change this value if you want different savegames on different map

GRLIB_sector_size = 1000;
GRLIB_capture_size = 175;
GRLIB_radiotower_size = 2500;
GRLIB_recycling_percentage = 0.65;
GRLIB_endgame = 0;
GRLIB_vulnerability_timer = 1200;
GRLIB_defended_buildingpos_part = 0.4;
GRLIB_sector_military_value = 3;
GRLIB_secondary_objective_impact = 0.6;
GRLIB_blufor_cap = 150								* GRLIB_unitcap;
GRLIB_sector_cap = 175								* GRLIB_unitcap;
GRLIB_battlegroup_cap = 135							* GRLIB_unitcap;
GRLIB_patrol_cap = 135								* GRLIB_unitcap;
GRLIB_battlegroup_size = 6							* GRLIB_unitcap * (sqrt GRLIB_csat_aggressivity);
GRLIB_civilians_amount = 8 						* GRLIB_civilian_activity;
GRLIB_fob_range = 125;
GRLIB_cleanup_delay = 1200;
GRLIB_surrender_chance = 75;
GRLIB_secondary_missions_costs = [ 10, 10, 10, 10, 10 ];
GRLIB_halo_altitude = 3000;

unitcap_respawns_limit = 25;
unitcap = unitcap_respawns_limit;

if ( GRLIB_blufor_cap > 300 ) then { GRLIB_blufor_cap = 100 }; // Don't forget that the human commander manages those, not the server

GRLIB_offload_diag = false;

GRLIB_terror_civilians = [];
GRLIB_terror_enabled = false;

GRLIB_markerToTask = [
["task_c_capture_13_1_2_26_12",		[0, "task_c_capture_13_1_2_26_12"]],						//Nidasos
["task_c_capture_13_1_2_26_27_1",	[0, "task_c_capture_13_1_2_26_27_1"]],						//Sofia
["task_c_capture_13_1_2_26_27",		[0, "task_c_capture_13_1_2_26_27"]],						//Gatolia
["task_c_capture_13_1_2_26_15",		[0, "task_c_capture_13_1_2_26_15"]],						//Delfinaki
["task_c_capture_13_1_2_26_14",		[0, "task_c_capture_13_1_2_26_14"]],						//Ioannina
["task_c_capture_66",				[0, "task_c_capture_66"]],									//Pefkas
["task_c_capture_13_1_2_26_19",		[0, "task_c_capture_13_1_2_26_19"]],						//Iraklia
["task_c_capture_13_1_2_26_5_1",	[0, "task_c_capture_13_1_2_26_5_1"]],						//Thelos
["task_c_capture_13_1_2_26_5",		[0, "task_c_capture_13_1_2_26_5"]],							//Kalochori
//["task_c_capture_67",				[1,"task_c_capture_67", "task_c_capture_67_r1"]],			//Almyra
["task_c_capture_67",				[2,"task_c_capture_67"]],									//Almyra - commArray
["task_c_capture_13_1_2_19",		[0, "task_c_capture_13_1_2_19"]],							//Nifi
["task_c_capture_13_1_2_18",		[0, "task_c_capture_13_1_2_18"]],							//Rodopoli
["task_c_capture_68",				[0, "task_c_capture_68"]],									//Kategidis
["task_c_capture_13_1_2_20",		[0, "task_c_capture_13_1_2_20"]],							//Dorida
["task_c_capture_13_1_2_26_5_1_2",	[0, "task_c_capture_13_1_2_26_5_1_2"]],						//Chalkeia
["task_c_capture_13_1_2_26_7",		[0, "task_c_capture_13_1_2_26_7"]]							//Aktinarki
];

GRLIB_taskDescriptions = [
["kill bandits", "Local town authority asked us to purge unclean in bandit's camp location nearby.", "Eliminate bandits camp"],
["destroy roadblock", "Town major notified us that OPFOR roadblock nearby causes heavy business losses to his town - road mostly closed for his drivers to pass government convoys. The best time to ambush something.", "Capture and ambush"],
["comm array", "Peaople of nearby town are very unhappy of small military communications post situated near the town. It was illegally powered from city's electrical network causing major issues with network stabiliity inside the town and lots of burned toasters. Locals will be pleased if you solve this problem.", "Destroy communications post"]
];