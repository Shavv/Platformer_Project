// Inherit oParEntity variables
event_inherited();


// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1;
groundFric  = 1.3;
airAccel    = 0.75;
airFric     = 0.1;
vxMax       = 7;
vyMax       = 10.0;
jumpHeight  = 12.0;
gravNorm    = 0.6;
gravSlide   = 0.25; 

clingTime   = 4.0;
// Misc ///////////////////////////////////////////////////////////////////////

// Relative collision checks
cLeft  = place_meeting(x - 1, y, oParSolid);
cRight = place_meeting(x + 1, y, oParSolid);