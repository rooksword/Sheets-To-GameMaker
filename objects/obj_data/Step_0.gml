/// @desc Check if all data loaded

data_loaded = true;
with obj_data_tab
{
	if !data_loaded
	{
		other.data_loaded = false;
	}
}