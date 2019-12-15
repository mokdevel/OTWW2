/*
A simple fast night function inspired by the fast night implementation by second_coming
*/

diag_log format ["Fastnight : Starting.."];

if !(isServer) exitWith {};	//Runs only on server

OTWW2_fastNightsStarts         	= 19;	// Start fast nights at this hour (24 hour clock) eg. 18 for 6pm
OTWW2_fastNightsMultiplierNight	= 120;  // the time multiplier to use at night (12 = 12x speed)
OTWW2_fastNightsEnds           	= 5;    // End fast nights at this hour (24 hour clock) eg. 6 for 6am
OTWW2_fastNightsMultiplierDay  	= 4;    // the time multiplier to use during daylight hours (4 = 4x speed)

[] spawn {
	while {true} do 
	{
		diag_log format ["@fastnight : Running."];
	
		private["_timeMultiplier"];
		if (daytime > OTWW2_fastNightsStarts || daytime < OTWW2_fastNightsEnds) then 
		{ 
			_timeMultiplier = OTWW2_fastNightsMultiplierNight; 
		} 
		else  
		{
			_timeMultiplier = OTWW2_fastNightsMultiplierDay;
		};

		if(timeMultiplier != _timeMultiplier) then { setTimeMultiplier _timeMultiplier; };

		_hour = floor daytime;
		_minute = floor ((daytime - _hour) * 60);
		_time24 = text format ["%1:%2",_hour,_minute];

		_logDetail = format ["Fastnight : Current in game time is %1 multipler is %2",_time24,_timeMultiplier];
		diag_log _logDetail;

		sleep 60;
	};
};
