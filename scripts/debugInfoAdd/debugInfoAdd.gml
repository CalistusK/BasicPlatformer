///@description						Position Debug Info display lines based on an anchor point.
///@param {int} debugDisplayLine	Which line in the display this should appear on.
///@param {str} debugDisplayLabel	What the line should be labeled.
///@param {real} debugDisplayVar	(Optional) What variable should be displayed.

//ex: debugInfoAnchor(0, "Debug Info:")
//ex: debugInfoAnchor(1, "pState: ", debugpState)

draw_set_colour(c_yellow);

labelPosX = debugInfoDisplay.debugAnchorX;
labelPosY = debugInfoDisplay.debugAnchorY + (argument[0] * 15);

draw_text(labelPosX, labelPosY, argument[1]);

if argument_count < 3 return;

varPosX = string_length(argument[1]) * 9;
varPosY = debugInfoDisplay.debugAnchorY + (argument[0] * 15);

draw_text(varPosX, varPosY, argument[2]);