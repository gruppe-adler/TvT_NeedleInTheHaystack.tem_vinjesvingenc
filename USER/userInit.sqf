/*  Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

[{
    private _firstActiveSectorID = selectRandom [3,4];
    private _roundLength = 1800;
    private _opforDirection = 1;

    private _dateAndTimeArray = [
        [2035,5,3,15,46],
        [2035,5,3,19,16],
        [2035,5,3,20,14],
        [2035,5,3,21,1],
        [2035,5,3,3,17],
        [2035,5,4,4,17],
        [2035,5,5,7,7],
        [2035,5,3,10,26],
        [2035,5,3,15,46],
        [2035,5,3,19,16],
        [2035,5,3,20,14],
        [2035,5,3,21,1],
        [2035,5,4,4,17],
        [2035,5,5,7,7],
        [2035,5,3,10,26]
    ];

    private _weatherArray = [
        [1,[0.665782,0.1,0]],
        [0.183659,[0.0744915,0.02,0]],
        [0,[0.033046,0.0176724,0]],
        [0,[0.211262,0.0176724,0]],
        [0,[0,0.014,0]],
        [0.169611,[0,0.014,0]],
        [0.426692,[0,0.014,0]],
        [0.5461,[0.265141,0.0274812,0]],
        [1,[0.665782,0.1,0]],
        [0.283659,[0.0744915,0.02,0]],
        [0,[0.033046,0.0176724,0]],
        [0,[0.211262,0.0176724,0]],
        [0.169611,[0,0.014,0]],
        [0.426692,[0,0.014,0]],
        [0.5461,[0.265141,0.0274812,0]]
    ];

    [_firstActiveSectorID, _roundLength, _opforDirection, _dateAndTimeArray, _weatherArray] call grad_linearSD_fnc_startLinearSD;

},[],[10,0] select didJIP] call CBA_fnc_waitAndExecute;