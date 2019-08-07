/// @description Display variable values
if (debug_mode && debugDraw) {
	//Display list of variables and values
	debugInfoAdd("Debug Info:");
	debugInfoAdd("FPS: ", string(fps));
	debugInfoAdd("pState: ", debugpState);
	debugInfoAdd("obj_player.xvel: ", obj_player.xvel);
	debugInfoAdd("obj_player.yvel: ", obj_player.yvel);
	debugInfoAdd("obj_player.x: ", obj_player.x);
	debugInfoAdd("obj_player.y: ", obj_player.y);
	debugInfoAdd("jumpCount: ", obj_player.jumpCount);
	debugInfoAdd("mouse_x: ", mouse_x);
	debugInfoAdd("mouse_y: ", mouse_y);
	
	//Draw object info at mouse position
	if debugMouseDraw
	{
		inst = instance_position(mouse_x, mouse_y, all);
		if (inst != noone)
		{
			if debugMouseLine = 0
			{
				draw_rectangle_colour(debugLabelPosX, debugBoxYleft, debugBoxXright, mouse_y, c_blue, c_blue, c_blue, c_blue, false)
			}
			debugMouseAdd("Name: ", object_get_name(inst.object_index));
			debugMouseAdd("bbox_top: ", inst.bbox_top);
			debugMouseAdd("bbox_left: ", inst.bbox_left);
			debugMouseAdd("bbox_right: ", inst.bbox_right);
		}
	}
	
	//Get player state
	switch(obj_player.stateCurrent) {
		case 0:
			debugpState = "idle";
			break;
		case 1:
			debugpState = "run";
			break;
		case 2:
			debugpState = "jump";
			break;
		case 3:
			debugpState = "fall";
			break;
		case 4:
			debugpState = "dash_low";
			break;
		case 5:
			debugpState = "dash_mid";
			break;
		case 6:
			debugpState = "dash_high";
			break;
	}
}