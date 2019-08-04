// H Collisions
if (place_meeting(obj_player.x + hspeed, obj_player.y, obj_block)) 
{
	while (!place_meeting(obj_player.x + sign(hspeed), obj_player.y, obj_block)) 
	{
		obj_player.x += sign(hspeed);
	}
	hspeed = 0;
}
obj_player.x += hspeed;

// v Collisions
if (place_meeting(obj_player.x, obj_player.y + vspeed, obj_block)) 
{
	while (!place_meeting(obj_player.x, obj_player.y + sign(vspeed), obj_block))
	{
		obj_player.y += sign(vspeed);
	}
	vspeed = 0;
}
obj_player.y += vspeed;