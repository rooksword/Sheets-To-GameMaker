/// @desc Log messages

if ds_map_find_value(async_load, "id") == file      // If the ID of the incoming data matches our request
{
	if ds_map_find_value(async_load, "status") == 0 // If the request was a success
	{
		grid = load_csv(path);                      // Make a DS grid from the downloaded .csv file
		array = [];
		loading_complete = true;
		
		var _width = ds_grid_width(grid);
		var _height = ds_grid_height(grid);
		for (var i = 2; i < _height; i++;)
		{
			var _struct = {};
			for (var j = 0; j < _width; j++;)
			{
				var _name = grid[# j, 1];
				if _name != "" variable_struct_set(_struct, _name, grid[# j, i]);
			}
			
			_struct.gsname = gsname;
			
			array_push(array, _struct);
		}
	}
}