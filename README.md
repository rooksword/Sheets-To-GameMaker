# 📃 Sheets-To-GameMaker 📃
## Read data from Google Sheets and Create Structs

### How to use

1. Create a Google Sheet (for example https://docs.google.com/spreadsheets/d/1VSeA9ihxDgwtcwskuRIWuSZtFo5W2goKq_i2OV8MqUY/edit?gid=0#gid=0)

![Example Google Sheet](https://i.ibb.co/rG9rjyKM/table-blank.png)

Make a note of the sheet ID and the tab ID which can be found in the URL.

For the example spreadsheet, the sheet ID is '1VSeA9ihxDgwtcwskuRIWuSZtFo5W2goKq_i2OV8MqUY'.

![Google Sheet ID](https://i.ibb.co/BVQYVWBy/table-id.png)

For the first tab, the ID is '0' but subsequent tabs will have different IDs.

![Google Sheet Tab ID](https://i.ibb.co/HDJhGj4n/table-tab-id.png)

Each tab represents an array which will contain structs.

The demo will use RGB values, XY co-oridinates, and a radius value to draw three circles.

Each circle will be a struct containing the colour, position, and size data and each struct will be contained in an array.

2. In the top row, write the descriptive name for the data which will be in each column

![Descriptive name](https://i.ibb.co/MxwvwRVm/table-column-title.png)

3. In the second row, write the variable name which you would like to use to access the data

![Variable name](https://i.ibb.co/HL2QpHw6/table-column-variable.png)

4. In the rest of the rows, write the data you want to read

![Rest of the data](https://i.ibb.co/ZpYcLcsJ/table-structs.png)

5. Open GameMaker and import the .yymps

![Import button](https://i.ibb.co/274RQmSH/import.png)

6. Create an object to store the data (i.e. obj_data)
7. Open the 'Create' event
8. Set the following variable:

```loading_complete = false;```

When loading is complete, set this variable to 'true' and don't try to access any data from the spreadsheet until loading is complete:

```loading_complete == false```

9. Create a variables which will refer to the array of data

```shapes = ...```

10. Set that variable to 'GSTabCreate(SHEET ID, TAB ID, TAB NAME)'

Get SHEET ID and TAB ID from the URL as described in point 1.

Put whatever TAB NAME you want. Every struct will have a variable called 'gsname' which will contain the TAB NAME.

The finished line might look like this:

```
shapes = GSTabCreate("1VSeA9ihxDgwtcwskuRIWuSZtFo5W2goKq_i2OV8MqUY", "0", "shapes");
```

11. Open the 'Step' event
12. Ensure that loading is complete

Use the following code to check if loading is complete:

```
loading_complete = GSLoadingCheck();
```

13. Add a way to refresh the data (optional)

By default, the data will only update once when the game starts. To update the data at any time, call the 'GSRefresh()' function on a key press or any other event.

14. Display the data however you want

For the demo, set some basic text formatting:

```
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour(c_white);
```

Then, if loading is not complete, draw a basic loading message:

```
if not loading_complete
{
	draw_text(room_width / 2, room_height / 2, "Loading...");
}
```

If loading is complete, draw the circles:

```
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
```
