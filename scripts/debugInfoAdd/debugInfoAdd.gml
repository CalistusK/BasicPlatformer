///@description						Position Debug Info display lines based on an anchor point.
///@param {str} debugDisplayLabel	What the line should be labeled.
///@param debugDisplayVar			(Optional) What variable should be displayed.

//ex: debugInfoAnchor(0, "Debug Info:")
//ex: debugInfoAnchor(1, "pState: ", debugpState)

var debugInfoLine = ds_list_find_index(debugInfoDisplay.debugInfoList, argument[0])

if debugInfoLine < 0
{
	ds_list_add(debugInfoDisplay.debugInfoList, argument[0]);
	debugInfoLine = ds_list_find_index(debugInfoDisplay.debugInfoList, argument[0])
}

draw_set_colour(c_yellow);

var labelPosX = debugInfoDisplay.debugAnchorX;
var labelPosY = debugInfoDisplay.debugAnchorY + (debugInfoLine * 15);

draw_text(labelPosX, labelPosY, argument[0]);

if argument_count < 2 return;

var varPosX = string_width(argument[0]);
var varPosY = debugInfoDisplay.debugAnchorY + (debugInfoLine * 15);

draw_text(varPosX, varPosY, argument[1]);