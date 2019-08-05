///@description Draw the bounding box of an object
///@param object Object to draw the bounding box for

draw_set_colour(c_blue);
	with (argument0)
	    {
	    draw_line(bbox_left, bbox_top, bbox_left, bbox_bottom);
	    draw_line(bbox_left, bbox_top, bbox_right, bbox_top);
	    draw_line(bbox_right, bbox_top, bbox_right, bbox_bottom);
	    draw_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom);
	    image_blend = c_white;
	    }
	draw_set_colour(c_white);