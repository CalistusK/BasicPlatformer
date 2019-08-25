/// @description Insert description here
// You can write your code in this editor
if (debug_mode && debugBBDraw) {
	if debugMouseDrawInst != noone && debugMouseLine = 0
	{
		draw_rectangle_colour(debugLabelPosX, debugMouseBoxYleft, debugMouseBoxXright, mouse_y, c_blue, c_blue, c_blue, c_blue, false)
	}

	if ds_list_size(debugInfoList) != 0
	{
		draw_set_alpha(0.5);
		draw_rectangle_colour(debugAnchorX, debugAnchorY, debugInfoListMaxX, debugInfoListLastY, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
	}
}