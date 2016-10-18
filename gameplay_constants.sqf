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
["task_c_capture_13_1_2_26_27_1",	[5, "task_c_capture_13_1_2_26_27_1"]],						//Sofia
["task_c_capture_13_1_2_26_27",		[0, "task_c_capture_13_1_2_26_27"]],						//Gatolia
["task_c_capture_13_1_2_26_15",		[0, "task_c_capture_13_1_2_26_15"]],						//Delfinaki
["task_c_capture_13_1_2_26_14",		[0, "task_c_capture_13_1_2_26_14"]],						//Ioannina
["task_c_capture_66",				[3, "task_c_capture_66"]],									//Pefkas
["task_c_capture_13_1_2_26_19",		[0, "task_c_capture_13_1_2_26_19"]],						//Iraklia
["task_c_capture_13_1_2_26_5_1",	[4, "task_c_capture_13_1_2_26_5_1"]],						//Thelos
["task_c_capture_13_1_2_26_5",		[6, "task_c_capture_13_1_2_26_5", "task_c_capture_13_1_2_26_5_r1", "task_c_capture_13_1_2_26_5_r2", "task_c_capture_13_1_2_26_5_r3"]],	//Kalochori
["task_c_capture_67",				[1,"task_c_capture_67", "task_c_capture_67_r1"]],			//Almyra
["task_c_capture_13_1_2_19",		[3, "task_c_capture_13_1_2_19"]],							//Nifi
["task_c_capture_13_1_2_18",		[2, "task_c_capture_13_1_2_18"]],							//Rodopoli
["task_c_capture_68",				[0, "task_c_capture_68"]],									//Kategidis
["task_c_capture_13_1_2_20",		[5, "task_c_capture_13_1_2_20"]],							//Dorida
["task_c_capture_13_1_2_26_5_1_2",	[1, "task_c_capture_13_1_2_26_5_1_2", "task_c_capture_13_1_2_26_5_1_2_r1"]],			//Chalkeia
["task_c_capture_13_1_2_26_7",		[0, "task_c_capture_13_1_2_26_7"]],							//Aktinarki
["task_c_capture_13_1_2_26_10",		[3, "task_c_capture_13_1_2_26_10"]],						//Feres
["task_c_capture_13_1_2_26_8",		[2, "task_c_capture_13_1_2_26_8"]],							//Panagia
["task_c_capture_13_1_2_13_1",		[4, "task_c_capture_13_1_2_13_1"]],							//Faronaki
["task_c_capture_13_1_2_26_11",		[0, "task_c_capture_13_1_2_26_11"]],						//Selakarno
["task_c_capture_13_1_2_4",			[7, "task_c_capture_13_1_2_4", "task_c_capture_13_1_2_4_r1", "task_c_capture_13_1_2_4_r2",
									"task_c_capture_13_1_2_4_r3", "task_c_capture_13_1_2_4_r4"]]//Charkia
];

//

GRLIB_taskDescriptions = [
["kill bandits", "Local town authority asked us to purge unclean in bandit's camp location nearby.", "Eliminate bandits camp"],
["destroy roadblock", "Town major notified us that OPFOR roadblock nearby causes heavy business losses to his town - road mostly closed for his drivers to pass government convoys. The best time to ambush something.", "Capture and ambush"],
["comm array", "People of nearby town are very unhappy of small military communications post situated near the town. It was illegally powered from city's electrical network causing major issues with network stabiliity inside the town and lots of burned toasters. Locals will be pleased if you solve this problem.", "Destroy communications post"],
["demolitions", "As town elder said, bunch of hobos turned peaceful area near his town into disgusting slums. Locals did their best to kick hobos off, but they always returned back. We were asked to blow off that place to hell. Elder notified us that his people saw a pistol under the jacket of one of hobos. We don't think they are armed, but you never know.", "Peaceful demolitions"],
["deliver wheels", "Today morning your usual routine of checking nearby towns requests was suddenly broken by rude man's voice, calling from a radio tuned on town major's frequency. 'Owner of this voice must be made of iron' - you thought - 'This request definitely needs some attention'.\n 'Hello, son. This is Tom... *cough* Corporal MacGrant speaking. Aside that your goddamn war is freaking out my citizens, it is messing with our business. You may think, rednecks like us don't have any obligations, but hell you are wrong. One of my trucks is out of duty because some goddamn cowboy shot two tyres and I don't have a spare. Thankfully, driver was not injured, he's a good fella.'\n Then iron man turned into Watto - junk dealer from Tatooine - and continued: 'So, could you be so kind and deliver 4 brand new truck wheels to my fellow town. You are not with army, I know you have new things all around. That small ddonation will help to arrange deal between us. MacGrant over.'", "Wheels of Freedom"],
["roadblock small", "We were tasked to eliminate roadblock near the town. Destroy all defenders and prevent OPFOR from restoring checkpoint functionality by destroying all fortifications.", "Destroy roadblock"],
["food order", "Local government in attempt to weak and frighten local cities cut food supplies from capitals. This is one of examples: the city is slowly dying without food and they need something bigger than our military rations. A government food storage nearby could solve their problems. The single obstackle that it is very well defended. Grab at least 5 food supplies and deliver to city center.", "Feed the city"],
["escape", "Help town elder's sons escape from Altis", "Running men"]
];