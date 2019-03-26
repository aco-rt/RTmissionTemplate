// =======================================================================================
//									 	INSTRUCTIONS
// =======================================================================================
// SCRIPT: [] execVM "Briefing.sqf";
// =======================================================================================
// SCRIPT ORIGIN: "init.sqf"
// =======================================================================================
// SCRIPT INTENT: Creates Briefing notes for all players to read before mission start.
// =======================================================================================
// REMINDER: First notes to be read should be at the end of the script and work their way up.
//			 Briefings are divided into Sides in case different factions are playable.
//			 You may add or remove briefing sections to your liking.
// =======================================================================================
// REFERENCES
// ---------------------------------------------------------------------------------------
// Example to hyperlink markers: <marker name='Marker_One'>Base</marker>
// 'Marker_One' is the marker name | Base is the hyperlink text
// ---------------------------------------------------------------------------------------
// Use <br/> to skip a line
// =======================================================================================

// =======================================================================================
// =======================================  SETUP  =======================================
// =======================================================================================

// =======================================================================================
// 								WAIT FOR PLAYER SYNCHRONIZATION
// =======================================================================================

//[] execVM "PWNR\Setup\JIP\waitForJIP.sqf";

// =======================================================================================
// 									  DEFINE VARIABLES
// =======================================================================================

_player = _this select 0;
_player = player;

// =======================================================================================
// ======================================  SCRIPT  =======================================
// =======================================================================================

switch (side player) do {

// =======================================================================================
// =======================================================================================
// 									  BRIEFING | WEST
// =======================================================================================
// =======================================================================================

case West:
{
// =======================================================================================
// Mission Briefing
// =======================================================================================

_int = player createDiaryRecord ["diary", ["Mission Briefing","
<br/>
BACKGROUND<br/>
What do the players need to know about what's going on in the world and in the region to make the conflict (the one the mission is in) make sense?<br/><br/>

SITUATION<br/>
What's going on in the current conflict to make this mission needed?<br/><br/>

MISSION<br/>
A quick description of what the main action is going to be.  Sweep and clear?  Defend?  Convoy?<br/><br/>

ENEMY FORCES<br/>
Give the players an idea about what they're facing.  Tanks?  Armor?  Rough idea of how many bad guys are near the objective?  How good is the intel? <br/><br/>

FRIENDLY FORCES<br/>
What sort of good guys are there?  Mostly it's going to just be the players, so what assets do they have?<br/><br/>

RULES OF ENGAGEMENT<br/>
Amber.  Hold fire unless fired upon, or given direct order by commander to fire.<br/><br/>

TASKS<br/>
1.) The first thing the group needs to do<br/>
2.) The next thing, or something optional<br/>
3.) Third thing that needs doing, or whatever.<br/><br/>

REINFORCEMENTS<br/>
Notes about respawns here.  If you have special rules, make mention.<br/><br/>
"]];

}; // end of WEST briefing


// =======================================================================================
// =======================================================================================
// 									  BRIEFING | EAST
// =======================================================================================
// =======================================================================================

case East:
{

// =======================================================================================
// Mission Briefing
// =======================================================================================

_int = player createDiaryRecord ["diary", ["Mission Briefing","
<br/>
BACKGROUND<br/>
What do the players need to know about what's going on in the world and in the region to make the conflict (the one the mission is in) make sense?<br/><br/>

SITUATION<br/>
What's going on in the current conflict to make this mission needed?<br/><br/>

MISSION<br/>
A quick description of what the main action is going to be.  Sweep and clear?  Defend?  Convoy?<br/><br/>

ENEMY FORCES<br/>
Give the players an idea about what they're facing.  Tanks?  Armor?  Rough idea of how many bad guys are near the objective?  How good is the intel? <br/><br/>

FRIENDLY FORCES<br/>
What sort of good guys are there?  Mostly it's going to just be the players, so what assets do they have?<br/><br/>

TASKS<br/>
1.) The first thing the group needs to do<br/>
2.) The next thing, or something optional<br/>
3.) Third thing that needs doing, or whatever.<br/><br/>

REINFORCEMENTS<br/>
Notes about respawns here.  If you have special rules, make mention.<br/><br/>
"]];

}; // end of EAST briefing


// =======================================================================================
// =======================================================================================
// 								   BRIEFING | INDEPENDENT
// =======================================================================================
// =======================================================================================

case Independent:
{
// =======================================================================================
// Mission Briefing
// =======================================================================================

_int = player createDiaryRecord ["diary", ["Mission Briefing","
<br/>
BACKGROUND<br/>
What do the players need to know about what's going on in the world and in the region to make the conflict (the one the mission is in) make sense?<br/><br/>

SITUATION<br/>
What's going on in the current conflict to make this mission needed?<br/><br/>

MISSION<br/>
A quick description of what the main action is going to be.  Sweep and clear?  Defend?  Convoy?<br/><br/>

ENEMY FORCES<br/>
Give the players an idea about what they're facing.  Tanks?  Armor?  Rough idea of how many bad guys are near the objective?  How good is the intel? <br/><br/>

FRIENDLY FORCES<br/>
What sort of good guys are there?  Mostly it's going to just be the players, so what assets do they have?<br/><br/>

TASKS<br/>
1.) The first thing the group needs to do<br/>
2.) The next thing, or something optional<br/>
3.) Third thing that needs doing, or whatever.<br/><br/>

REINFORCEMENTS<br/>
Notes about respawns here.  If you have special rules, make mention.<br/><br/>
"]];

}; // end of INDEP BRIEF


// =======================================================================================
// =======================================================================================
// 									 BRIEFING | CIVILIAN
// =======================================================================================
// =======================================================================================

case Civilian:
{
// =======================================================================================
// Mission Briefing
// =======================================================================================

_int = player createDiaryRecord ["diary", ["Mission Briefing","
<br/>
BACKGROUND<br/>
What do the players need to know about what's going on in the world and in the region to make the conflict (the one the mission is in) make sense?<br/><br/>

SITUATION<br/>
What's going on in the current conflict to make this mission needed?<br/><br/>

MISSION<br/>
A quick description of what the main action is going to be.  Sweep and clear?  Defend?  Convoy?<br/><br/>

ENEMY FORCES<br/>
Give the players an idea about what they're facing.  Tanks?  Armor?  Rough idea of how many bad guys are near the objective?  How good is the intel? <br/><br/>

FRIENDLY FORCES<br/>
What sort of good guys are there?  Mostly it's going to just be the players, so what assets do they have?<br/><br/>

TASKS<br/>
1.) The first thing the group needs to do<br/>
2.) The next thing, or something optional<br/>
3.) Third thing that needs doing, or whatever.<br/><br/>

REINFORCEMENTS<br/>
Notes about respawns here.  If you have special rules, make mention.<br/><br/>
"]];

}; // end of CIV BRIEF

}; // end player side check
