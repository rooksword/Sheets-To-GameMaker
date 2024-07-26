/// @desc Draw loading

draw_set_colour(c_white);

if !obj_data.data_loaded
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(room_width / 2, room_height / 2, "Loading...");
}
else
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	var _len = array_length(obj_data.name.array);
	for (var i = 0; i < _len; i++;)
	{
		var _col = c_white;
		if i < array_length(obj_data.colour.array)
		{
			switch obj_data.colour.array[i].colour
			{
				case "red":
					_col = c_red;
					break;
				case "blue":
					_col = c_blue;
					break;
			}
		}
		draw_set_colour(_col);
		
		draw_text(32, 32 + (i * 32), obj_data.name.array[i].name);
	}
}