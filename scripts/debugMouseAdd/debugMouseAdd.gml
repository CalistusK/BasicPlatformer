///@param {str} debugMouseLabel		What the line should be labeled.
///@param debugMouseVar				(Optional) What variable should be displayed.

debugMouseLine = ds_list_find_index(debugInfoDisplay.debugMouseList, argument[0])

if debugMouseLine < 0
{
	ds_list_insert(debugInfoDisplay.debugMouseList, 0, argument[0]);
	debugMouseLine = ds_list_find_index(debugInfoDisplay.debugMouseList, argument[0])
}

if argument_count >= 2
{
	if string_width(argument[0] + string(argument[1])) > string_width(debugLongest) debugLongest = string_width(argument[0] + string(argument[1]))
}
else
	if string_width(argument[0]) > string_width(debugLongest) debugLongest = string_width(argument[0])

draw_set_colour(c_yellow);

debugLabelPosX = mouse_x + debugInfoDisplay.debugMouseAnchorX;
debugLabelPosY = mouse_y + debugInfoDisplay.debugMouseAnchorY - (debugMouseLine * 15);
debugBoxXright = mouse_x + debugLongest + 5
debugBoxYleft = mouse_y - (ds_list_size(debugInfoDisplay.debugMouseList) * 15)

draw_text(debugLabelPosX, debugLabelPosY, argument[0]);

if argument_count < 2 return;

var varPosX = mouse_x + string_length(argument[0]) * 9;
var varPosY = mouse_y + debugInfoDisplay.debugMouseAnchorY - (debugMouseLine * 15);

draw_text(varPosX, varPosY, argument[1]);