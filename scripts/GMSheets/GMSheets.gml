function GSTabCreate(_id_sheet, _id_tab, _name)
{
	var _inst = instance_create_layer(0, 0, "Instances", GSTab, {
		id_sheet: _id_sheet,
		id_tab: _id_tab,
		path: working_directory + _name + ".csv",
		gsname: _name
	});
	
	return _inst;
}

function GSDownload(_id_sheet, _id_tab)
{
	// Creates a local variable called '_url', enters the ID for the Google Sheet
	
	var _url =
		"https://docs.google.com/spreadsheets/d/"
		+ _id_sheet
		+ "/export?format=csv&id="
		+ _id_sheet
		+ "&gid="
		+ _id_tab;
	
	// Starts request for a file from the URL to be downloaded to the path
	
	return http_get_file(_url, path);
}

function GSLoadingCheck()
{
	var _loading_complete = true;
	
	with GSTab
	{
		if not loading_complete
		{
			_loading_complete = false;
		}
	}
	
	return _loading_complete;
}

function GSRefresh()
{
	with GSTab
	{
		file = GSDownload(id_sheet, id_tab);
	}
}