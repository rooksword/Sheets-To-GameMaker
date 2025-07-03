/// @desc Draw test

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour(c_white);

if not loading_complete
{
	draw_text(room_width / 2, room_height / 2, "Loading...");
}
else
{
	var _arr = shapes.array;
	var _len = array_length(_arr);
	
	for (var i = 0; i < _len; i++;)
	{
		var _circle = _arr[i];
		var _col = make_colour_rgb(_circle.r, _circle.g, _circle.b);
		draw_set_colour(_col);
		draw_circle(_circle.x, _circle.y, _circle.radius, false);
	}
}