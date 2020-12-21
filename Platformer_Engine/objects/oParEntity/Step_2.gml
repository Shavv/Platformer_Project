// Vertical
repeat(abs(vy)) {
    if (!place_meeting(x, y + sign(vy), oParSolid))
        y += sign(vy); 
    else {
        vy = 0;
        break;
    }
}

// Horizontal
repeat(abs(vx)) {

    // Move up slope
    if (place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y - 1, oParSolid))
        y -=1;
    
    // Move down slope
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && place_meeting(x + sign(vx), y + 2, oParSolid))
         y +=1;

    if (!place_meeting(x + sign(vx), y, oParSolid))
        x += sign(vx); 
    else {
        vx = 0;
        break;
    }
}