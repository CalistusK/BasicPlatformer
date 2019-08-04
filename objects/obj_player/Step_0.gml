if keyboard_check(vk_left)
{
	if hspeed > -5
	{
		hspeed -= 1;
	}
}
else
if keyboard_check(vk_right)
{
   if hspeed < 5
   {
		hspeed += 1;
   }
}
else
hspeed = 0;

if keyboard_check_pressed(vk_space) and jumpCount > 0
{
	if !(vspeed <= -15)
	{
		vspeed = vspeed - 16;
		stateCurrent = pState.jump;
		jumpCount = 0;
	}
	else
	gravity = 1;
	vspeed += gravity
}

if hspeed != 0
{
	stateCurrent = pState.run;
}
else
stateCurrent = pState.idle;

if !(place_free(obj_player.x, obj_player.y + 1)) && vspeed = 0
{
	jumpCount = 1;
}

if vspeed > 0
{
	stateCurrent = pState.fall;
}

if vspeed < 0
{
	stateCurrent = pState.jump;
}

if vspeed > gravityCap
{
	vspeed = gravityCap
}
   
if (y > room_height) game_restart()