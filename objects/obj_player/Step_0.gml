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

if keyboard_check_pressed(vk_space) and jumpMax > 0
{
	if !(vspeed <= -15)
	{
		vspeed = vspeed - 16;
		stateCurrent = pState.jump;
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

if !(position_meeting(obj_player.x, obj_player.y + 33, obj_block))
{
	jumpMax = 0;
}
else
jumpMax = 1;

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