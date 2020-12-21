/// @description Insert description here
// You can write your code in this editor
var player=instance_place(x,y+1,PLAYER)

if player!=noone
{
 if player.slime>=global.item[item,COST]
 {
  
  player.slime-=global.item[item,COST]
  
  //sword
  if global.item[item,TYPE]="sword"  or global.item[item,TYPE]="spear"
  or global.item[item,TYPE]="hammer" or global.item[item,TYPE]="mace"
  {
   var weapon=player.weapon
   weapon.item=global.item[item,IMAGE]
   player.current_weapon=global.item[item,TYPE]
   weapon.current_weapon=global.item[item,TYPE]
   weapon.dmg=global.item[item,VAR]
   with(weapon) {skeleton_attachment_set(current_weapon,item)}
  }
  
  
  
  
  
  if global.item[item,TYPE]="armor"
  {
   player.spr_armor=global.item[item,IMAGE]
   player.f_mhp=global.item[item,VAR]
   player.hp=global.item[item,VAR]
  }
  
  
  
  instance_destroy()
 }
}