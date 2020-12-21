/// @description 
x=master.x

state=master.state

if state=0
{
 play_animation(current_weapon+string("_idle"),1,false)	
 
 image_xscale=master.image_xscale
 image_yscale=master.image_yscale
}

if state=-1 {play_animation(current_weapon+string("_idle"),1,false)	}


//depth
if current_weapon="hammer"   {depth=master.depth+1}
if current_weapon="mace"   {depth=master.depth+1}
if current_weapon="spear"    {depth=master.depth+1}
if current_weapon="sword"    {depth=master.depth-1}
if current_weapon="crossbow" {depth=master.depth-1}


if state=1 or (state=0 and attacking=true)
{
 if current_weapon="hammer" {basic_attack("hammer_attack1",0.5,6,fx_hammer_hit,0,-25,35,30,image_xscale,1,4)}
 if current_weapon="mace"   {basic_attack("mace_attack1",0.5,4,fx_hammer_hit,0,-25,30,30,image_xscale,1,4)}
 if current_weapon="spear"  {basic_attack("spear_attack1",0.5,4,fx_spear_hit,10,-5,40,8,image_xscale,3,2)}
 if current_weapon="sword"  {basic_attack("sword_attack1",0.5,4,fx_sword_hit,5,-10,35,13,image_xscale,2,2)}
 
}


