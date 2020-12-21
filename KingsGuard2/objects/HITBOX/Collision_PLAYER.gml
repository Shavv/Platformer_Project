/// @description Insert description here
// You can write your code in this editor
if other.team!=team
{ 
 knockback(other,h_direction,h_power,v_power/2)
 audio_play_sound(fx_hurt,0,0)
 other.hp-=dmg
}