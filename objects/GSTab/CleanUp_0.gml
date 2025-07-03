/// @desc Destroy the grid when it is no longer needed

if ds_exists(grid, ds_type_grid) // If the DS grid exists
{
	ds_grid_destroy(grid);       // Destroy it so that it is no longer taking up memory
}