function GSDownload(_id_sheet, _id_tab)
{
	grid_loaded = false;
	
	// Creates a local variable called '_url', enters the ID for the Google Sheet
	
	var _url =
		"https://docs.google.com/spreadsheets/d/"
		+ _id_sheet
		+ "/export?format=csv&id="
		+ _id_sheet
		+ "&gid="
		+ _id_tab;
	
	// Updates the 'file' variable to our request for a file from the URL to be downloaded to the path
	
	file = http_get_file(_url, path);
}

function CreateTab(_id_sheet, _id_tab, _name)
{
	var _inst = instance_create_layer(0, 0, "Instances", obj_data_tab, {
		id_sheet: _id_sheet,
		id_tab: _id_tab,
		path: working_directory + _name + ".csv"
	});
	
	return _inst;
}