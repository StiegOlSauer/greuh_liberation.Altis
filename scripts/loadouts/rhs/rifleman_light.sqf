_unit = _this select 0;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit addVest "V_BandollierB_rgr";
_unit addItemToVest "FirstAidKit";
for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "RH_7Rnd_45cal_m1911";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
_unit addHeadgear "H_Bandanna_camo";
_unit addGoggles "G_Bandanna_beast";

_unit addWeapon "rhs_weap_m92";
_unit addWeapon "RH_m1911";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";