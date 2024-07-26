/// @desc Variables

// 1. Create a Google Sheet
// 2. Set it to public for viewing
// 3. The URL should look like this
// https://docs.google.com/spreadsheets/d/1Ad7tbCtEBMGKL0f4vtigUuM_KxalvoeB9C0e4BzC8N4/edit?gid=0#gid=0
// 4. Enter the ID (bewteen d/ and /edit) in the variable below

var _id = "1Ad7tbCtEBMGKL0f4vtigUuM_KxalvoeB9C0e4BzC8N4";

// 5. For each tab you want to add, initialize a new variable with the CreateTab function
// 6. The first argument is _id
// 7. The second argument is the tab ID which is in the URL after "gid="
// 6. The third argument is whatever you want to name the tab

name   = CreateTab(_id, "0",          "name");
colour = CreateTab(_id, "987362950",  "colour");

data_loaded = false;