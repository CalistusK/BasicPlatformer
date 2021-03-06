key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump_rel = keyboard_check_released(vk_space);
key_dash = keyboard_check_pressed(vk_lshift);

pGrounded = place_meeting(obj_player.x,obj_player.y+1,all);

pWallTouch = ( place_meeting(obj_player.x + 1,obj_player.y,all)
			|| place_meeting(obj_player.x - 1,obj_player.y,all) )

if (pWallTouch) pLeftRight = true;

if (alarm[0] == -1 || pWallTouch) pStateUpdate();

if (pLeftRight) xvel = (key_right - key_left) * runspeed;

if ( sign(xvel) != 0 ) pFacing = sign(xvel);

image_xscale = pFacing;

switch ( stateCurrent )
{
	case pState.dash:
		yvel = 0;
		break;
	default:
		yvel = yvel + grav;
		break;
}

if ( (dashCount > 0)
	&& (key_dash)
	&& !(stateCurrent = pState.dash) )
{
	--dashCount;
	alarm[0] = timerDash;
	pStateSet(pState.dash);
	if ( (xvel == 0) )
	{
		xvel = sign(pFacing) * 10;
	}
	else
	{
		xvel *= 2;
	}
}

if ( (abs(xvel) > runspeed)
	&& (!(stateCurrent = pState.dash))
	&& (!(stateCurrent = pState.jump)) )
{
	//fix it fix it fix it
	xvel -= sign(xvel) * power(abs(xvel), -0.5);
}

if ( (abs(xvel) > runspeed - 0.1)
	&& (abs(xvel) < runspeed + 0.1) )
{
	xvel = sign(xvel) * runspeed;
}

if ( jumpCount > 0
	&& (key_jump) )
{
	--jumpCount;
    yvel = -gravityCap;
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