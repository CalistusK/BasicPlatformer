if keyboard_check(vk_left)
   {
   hspeed = -5;
   }
else
if keyboard_check(vk_right)
   {
   hspeed = 5;
   }
else
hspeed = 0;
stateCurrent = pState.idle;

if hspeed != 0 {
	stateCurrent = pState.run;
}

if vspeed > 0 {
	stateCurrent = pState.fall;
}

if vspeed < 0 {
	stateCurrent = pState.jump;
}

//Stop accelerating fall speed due to natural gravity
if vspeed > gravityCap {
	vspeed = gravityCap
}
   
if (y > room_height) game_restart()