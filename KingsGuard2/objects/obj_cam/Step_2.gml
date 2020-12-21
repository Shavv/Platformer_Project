/// @description get not to close to room border

if y>room_height-((camera_get_view_height(0)/2)/zoom) {y=room_height-((camera_get_view_height(0)/2)/zoom)}
if y<((camera_get_view_height(0)/2)/zoom)               {y=(camera_get_view_height(0)/2)/zoom}
if x>room_width-((camera_get_view_width(0)/2)/zoom)  {x=room_width-((camera_get_view_width(0)/2)/zoom)}
if x<((camera_get_view_width(0)/2)/zoom)             {x=(camera_get_view_width(0)/2)/zoom}


