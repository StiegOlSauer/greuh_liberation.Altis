_unit = _this select 0;

if (combat_readiness < 65) then {
	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "LOP_U_SLA_Fatigue_01";
	_unit addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_morphine";
	for "_i" from 1 to 3 do {_unit addItemToUniform "RH_20Rnd_32cal_vz61";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addVest "LOP_V_6Sh92_Radio_OLV";
	_unit addItemToVest "SmokeShell";
	_unit addItemToVest "HandGrenade";
	for "_i" from 1 to 10 do {_unit addItemToVest "CUP_5Rnd_762x51_M24";};
	_unit addHeadgear "H_Watchcap_camo";
	_unit addGoggles "G_Bandanna_oli";

	comment "Add weapons";
	_unit addWeapon "CUP_srifle_M24_wdl";
	_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
	_unit addPrimaryWeaponItem "CUP_bipod_Harris_1A2_L";
	_unit addWeapon "RH_vz61";
	_unit addWeapon "Binocular";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

} else {
	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_cu_ocp";
	_unit addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_morphine";
	for "_i" from 1 to 2 do {_unit addItemToUniform "RH_17Rnd_9x19_g17";};
	_unit addVest "rhsusf_iotv_ocp_Teamleader";
	for "_i" from 1 to 7 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
	for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
	_unit addHeadgear "rhsusf_ach_bare_des";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_XM2010_d_leu";
	_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
	_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
	_unit addWeapon "RH_g17";
	_unit addWeapon "lerca_1200_tan";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
};