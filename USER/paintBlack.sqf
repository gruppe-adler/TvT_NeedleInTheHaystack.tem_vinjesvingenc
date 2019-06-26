params ["_vehicle", "_side"];

private _color = "#(rgb,8,8,3)color(0.05,0.05,0.05,1)";

if (_side == west) then {
    _color = "#(rgb,8,8,3)color(0.05,0.07,0.15,1)";
};

sleep 3;

if (_vehicle isKindOf "Air" && _side == west) then {
    _vehicle setObjectTextureGlobal [0, "USER\uh1h_blue_co.paa"];
};

if (_vehicle isKindOf "gm_wheeled_base") then {


    _vehicle setObjectTextureGlobal [0, _color];
    _vehicle setObjectTextureGlobal [1, _color];
    _vehicle setObjectTextureGlobal [2, _color];
    _vehicle setObjectTextureGlobal [3, _color];
    _vehicle setObjectTextureGlobal [4, _color];

    sleep 1;

    if (_side == west) then {
        [_vehicle,"gm_tacticalSign_none",1,2] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes; // spawn
        [_vehicle,"gm_insignia_none",3,1] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",3,4] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",0,1] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes; // spawn
        [_vehicle,"gm_insignia_none",3,3] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",3,5] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"-1",1,0] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes; // spawn
        [_vehicle,"-1",3,0] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",3,2] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_licenseplate_none",0,0] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes; // spawn
        [_vehicle,"-1",1,3] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes; // spawn
    } else {
        [_vehicle,"gm_insignia_none",3,1] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",5,0] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",3,5] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"",2,0] spawn gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_cool_bore_wht",3,4] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",3,3] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_recon_x_01_wht",3,0] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_insignia_none",3,2] call gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
        [_vehicle,"gm_gc_schablonier_blk",2,1] spawn gm_core_vehicles_fnc_vehicleMarkingsUpdateAttributes;
    };
};

