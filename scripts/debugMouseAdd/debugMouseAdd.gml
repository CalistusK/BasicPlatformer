///@param {str} debugMouseLabel		What the line should be labeled.
///@param debugMouseVar				(Optional) What variable should be displayed.

var debugMouseLine = ds_list_find_index(debugInfoDisplay.debugMouseList, argument[0])

if debugMouseLine < 0
{
	ds_list_insert(debugInfoDisplay.debugMouseList, 0, argument[0]);
	debugMouseLine = ds_list_find_index(debugInfoDisplay.debugMouseList, argument[0])
}

draw_set_colour(c_yellow);

var labelPosX = mouse_x + debugInfoDisplay.debugMouseAnchorX;
var labelPosY = mouse_y + debugInfoDisplay.debugMouseAnchorY - (debugMouseLine * 15);

draw_text(labelPosX, labelPosY, argument[0]);

if argument_count < 2 return;

var varPosX = mouse_x + string_length(argument[0]) * 9;
var varPosY = mouse_y + debugInfoDisplay.debugMouseAnchorY - (debugMouseLine * 15);

draw_text(varPosX, varPosY, argument[1]);