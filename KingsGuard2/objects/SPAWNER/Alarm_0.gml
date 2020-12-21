/// @description spawns
var enemy=instance_create_depth(choose(25,1890),425,0,BOT)
enemy.wpn=choose("sword","hammer","spear")
enemy.f_mhp=choose(1,1,1,1,2,2,2,3,3,4)
enemy.hp=enemy.f_mhp
enemy.f_movespeed=random_range(0.5,2)
enemy.spr_armor=choose(spr_helmie_helm_1,spr_helmie_helm_2,no_sprite,no_sprite,no_sprite,no_sprite,no_sprite,no_sprite,no_sprite,no_sprite)

with (enemy)
{
 weapon=instance_create_depth(x,y,depth+1,WEAPON)
 weapon.master=id
 weapon.current_weapon=wpn
 weapon.team=team
}

spawns++