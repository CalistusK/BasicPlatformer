if debug_mode {
	debugDraw = true;
	debugMouseDraw = true;
	debugpState = "";
	debugAnchorX = 5;
	debugAnchorY = 0;
	debugBoxXright = 0;
	debugBoxYleft = 0;
	debugLabelPosX = 0;
	debugLabelPosY = 0;
	debugMouseAnchorX = 0;
	debugMouseAnchorY = -20;
	debugInfoList = ds_list_create();
	debugMouseList = ds_list_create();
	debugMouseLine = 0;
	debugLongest = "";
}