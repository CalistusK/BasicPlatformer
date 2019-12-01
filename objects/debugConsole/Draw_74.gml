/// @description Draw console background
if (dConEnabled && dConDraw)
{
	dConTopAnchor = room_height - ((string_height("string") - 5) * 8)
	draw_set_alpha(0.5); //set alpha for drawing this bg
	draw_rectangle_colour(0, dConTopAnchor, room_width, room_height, c_teal, c_teal, c_teal, c_teal, false);
	draw_set_alpha(1); //set alpha back to default
}