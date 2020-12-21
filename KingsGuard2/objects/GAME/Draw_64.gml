/// @description draw_UI
var enemies=instance_number(BOT)
var i;
var j;
var u;
var h;

draw_set_alpha(1)


//max HP
for(i=0;i<PLAYER.f_mhp;i++)
{
 draw_sprite(ui_heart_empty,-1,((10)+32*i),10)
}

//current HP
for(u=0;u<PLAYER.hp;u++)
{
 draw_sprite(ui_heart,-1,((10)+32*u),10)
}

//enemies spawned in a round
for(j=0;j<SPAWNER.maxspawns;j++)
{
 draw_sprite(icon_enemy2,-1,((10)+32*j),display_get_height()-32-10)
}

//enemies alive
for(j=0;j<enemies;j++)
{
 draw_sprite(icon_enemy,-1,((10)+32*j),display_get_height()-32-10)
}

draw_set_halign(fa_right)
draw_set_font(font_slime_counter)
draw_set_color(c_slime)
draw_text(display_get_width()-32-20,10,PLAYER.slime)
draw_sprite(SlimeIcon,-1,(display_get_width()-32-10),10)
draw_set_halign(fa_left)
draw_set_color(c_white)

draw_set_font(font1)





if PLAYER.hp<=0
{
 fade+=0.01
 draw_set_color(c_black)
 draw_set_alpha(fade)
 draw_rectangle(0,0,display_get_width(),display_get_height(),0) 	
 if fade>=1
 {
  game_restart()	 
 }
}

if fadestart>=0
{

 fadestart-=0.005
 draw_set_alpha(fadestart) 
 draw_set_color(c_black)
 draw_rectangle(0,0,display_get_width(),display_get_height(),0) 
}

