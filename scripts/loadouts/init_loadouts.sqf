_is_rhs = true;
_rhs_classnames = [ "rhs_weap_ak74m_camo_folded","rhs_weap_ak74m_camo_npz","rhs_weap_pkm","rhs_weap_akms","rhs_weap_ak74m_camo_npz","rhs_weap_svdp_wd_npz","rhs_weap_akm","rhs_weap_rpg7" ];

_loadouts_folder = "scripts\loadouts\rhs\";

loadout_crewman = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "crewman" ]);
loadout_sl = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "sl" ]);
loadout_rifleman = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "rifleman" ]);
loadout_autorifleman = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "autorifleman" ]);
loadout_rifleman_light = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "rifleman_light" ]);
loadout_marksman = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "marksman" ]);
loadout_at = compile preprocessFileLineNumbers (format ["%1%2.sqf", _loadouts_folder, "at" ]);

militia_standard_squad = [ loadout_sl, loadout_autorifleman, loadout_rifleman, loadout_rifleman, loadout_rifleman_light, loadout_rifleman_light, loadout_marksman, loadout_at, loadout_at, loadout_at ];

opfor_sentry_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_lat.sqf";		
opfor_rifleman_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier.sqf";		
opfor_grenadier_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_gl.sqf";	
opfor_squad_leader_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_sl.sqf";	
opfor_team_leader_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_tl.sqf";	
opfor_officer_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\commander.sqf";		
opfor_machinegunner_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_ar.sqf";
opfor_heavygunner_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\mg.sqf";			
opfor_rpg_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_at.sqf";			
opfor_at_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_hat.sqf";			
opfor_aa_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\soldier_aa.sqf";			
opfor_marksman_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\sniper.sqf";			
opfor_sharpshooter_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\sharpshooter.sqf";
opfor_sniper_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\hsniper.sqf";			
opfor_medic_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\medic.sqf";				
opfor_engineer_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\engineer.sqf";		
opfor_crew_loadout = compile preprocessFileLineNumbers "scripts\loadouts\opfor\loadout_crewman.sqf";

/*opfor_squad_low_intensity_loadout = [opfor_team_leader_loadout,opfor_machinegunner_loadout,opfor_medic_loadout,opfor_rpg_loadout,opfor_sentry_loadout,opfor_sentry_loadout,opfor_sentry_loadout,opfor_sentry_loadout];
opfor_squad_8_standard_loadout = [opfor_squad_leader_loadout,opfor_team_leader_loadout,opfor_machinegunner_loadout,opfor_heavygunner_loadout,opfor_medic_loadout,opfor_marksman_loadout,opfor_grenadier_loadout,opfor_rpg_loadout];
opfor_squad_8_infkillers_loadout = [opfor_squad_leader_loadout,opfor_machinegunner_loadout,opfor_machinegunner_loadout,opfor_heavygunner_loadout,opfor_medic_loadout,opfor_marksman_loadout,opfor_sharpshooter_loadout,opfor_sniper_loadout];
opfor_squad_8_tankkillers_loadout = [opfor_squad_leader_loadout,opfor_medic_loadout,opfor_machinegunner_loadout,opfor_rpg_loadout,opfor_rpg_loadout,opfor_at_loadout,opfor_at_loadout,opfor_at_loadout];
opfor_squad_8_airkillers_loadout = [opfor_squad_leader_loadout,opfor_medic_loadout,opfor_machinegunner_loadout,opfor_rpg_loadout,opfor_rpg_loadout,opfor_aa_loadout,opfor_aa_loadout,opfor_aa_loadout];
*/