// Input //////////////////////////////////////////////////////////////////////

var kLeft, kRight, kUp, kDown, kJump, kJumpRelease, tempAccel, tempFric;

kLeft        = keyboard_check(vk_left);
kRight       = keyboard_check(vk_right);
kUp          = keyboard_check(vk_up);
kDown        = keyboard_check(vk_down);

kJump        = keyboard_check_pressed(ord("Z"));
kJumpRelease = keyboard_check_released(ord("Z"));

// Movement ///////////////////////////////////////////////////////////////////
cLeft  = place_meeting(x - 1, y, oParSolid);
cRight = place_meeting(x + 1, y, oParSolid);

// Apply the correct form of acceleration and friction
if (onGround) {
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
}

// Reset wall cling
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
}   

// Cling to wall
if (((kRight && cLeft) || (kLeft && cRight)) && canStick && !onGround) {
    alarm[0] = clingTime;
    sticking = true; 
    canStick = false;       
}

// Handle gravity
if (!onGround) {
    if ((cLeft || cRight) && vy >= 0) {
        // Wall slide
        vy = Approach(vy, vyMax, gravSlide);
    } else {
        // Fall normally
        vy = Approach(vy, vyMax, gravNorm);
    }
}

// Left 
if (kLeft && !kRight && !sticking) {
    // Apply acceleration left
    if (vx > 0)
        vx = Approach(vx, 0, tempFric);   
    vx = Approach(vx, -vxMax, tempAccel);
	
	sprite_index = sTidusGlide;
	image_xscale = -1;
}

// Right 
if (kRight && !kLeft && !sticking) {
    // Apply acceleration right
    if (vx < 0)
        vx = Approach(vx, 0, tempFric);   
    vx = Approach(vx, vxMax, tempAccel);
	
	sprite_index = sTidusGlide;
	image_xscale = 1;
}

// Friction
if (!kRight && !kLeft){
    vx = Approach(vx, 0, tempFric);
	sprite_index = sTiduStanding
}
        
// Wall jump
if (kJump && cLeft && !onGround) {
	image_xscale = 1;
	
    if (kLeft) {
        vy = -jumpHeight * 1.1;
        vx =  jumpHeight * .75;
    } else {
        vy = -jumpHeight * 1.1;
        vx =  vxMax;
    }  
}

if (kJump && cRight && !onGround) {
	image_xscale = -1;
	
    if (kRight) {
        vy = -jumpHeight * 1.1;
        vx = -jumpHeight * .75;
    } else {
        vy = -jumpHeight * 1.1;
        vx = -vxMax;
    }  
}
 
// Jump 
if (kJump) { 
    if (onGround)
        vy = -jumpHeight;
    // Variable jumping
} else if (kJumpRelease) { 
    if (vy < 0)
        vy *= 0.25;
}

if (!onGround){
	sprite_index = sTidusJump;	
}