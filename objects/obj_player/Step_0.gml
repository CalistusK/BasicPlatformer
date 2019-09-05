//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump_rel = keyboard_check_released(vk_space);
key_dash = keyboard_check_pressed(vk_lshift);

if (!(stateCurrent = pState.dash)) xvel = (key_right - key_left) * runspeed;

yvel = yvel + grav;

if (place_meeting(x,y+1,all))
{
	if (xvel == 0)
	{
		pStateSet(pState.idle);
	}
	else
	{
		pStateSet(pState.run);
	}
}

if (key_dash && !(stateCurrent = pState.dash))
{
	pStateSet(pState.dash);
	xvel *= 2;
}

if (abs(xvel) > runspeed)
{
	//wanna ease/tween here, not whatever this is!
	xvel -= sign(xvel) * power(abs(xvel), -0.5);
}

if ((abs(xvel) > runspeed) && (abs(xvel) < runspeed + 0.1)) xvel = runspeed;

if jumpCount > 0 and (key_jump)
{
    yvel = -gravityCap;
	jumpCount--;
	pStateSet(pState.jump);
}

if (key_jump_rel)
{
	yvel = yvel/1.5;
}

var onepixel = sign(xvel)
if (place_meeting(x+xvel,y,all))
{
    while (!place_meeting(x+onepixel,y,all))
    {
        x = x + onepixel;
    }
    xvel = 0;
}
x = x + xvel;

var onepixel = sign(yvel)
if (place_meeting(x,y+yvel,all))
{
    while (!place_meeting(x,y+onepixel,all))
    {
        y = y + onepixel;
    }
    yvel = 0;
}
y = y + yvel;

//The most basic floor depenetration
if (place_meeting(x,bbox_bottom,all))
{
	y -= 1;
}
   
if (y > room_height) game_restart()