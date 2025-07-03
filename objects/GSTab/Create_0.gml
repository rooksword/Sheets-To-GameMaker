/// @desc Setup

loading_complete = false;
file = GSDownload(id_sheet, id_tab);
grid = file_exists(path) ? load_csv(path) : -1; // Reference to the DS grid which we'll load from the .csv