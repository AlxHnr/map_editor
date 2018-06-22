![preview.gif](https://raw.github.com/AlxHnr/map_editor/master/preview.gif)

The example above uses the
[Exterior 32x32 Town Tileset](https://opengameart.org/content/exterior-32x32-town-tileset).

### Controls

The left and right mouse buttons can be used to set or erase tiles.
Middle-click into the map area to show/hide the sidebar. The tile selection
is scrollable. It can be scrolled horizontally if the middle mouse button
is pressed. The scrolling wheel will change the amount of tiles to
insert/delete in the map area.

## Building

This program requires the development files of the following libraries:

* SDL (_not_ SDL2)
* SDL\_image
* SDL\_gfx

Build and run the editor using `make run`. The path to a map file can be
passed to the editor as an argument.
