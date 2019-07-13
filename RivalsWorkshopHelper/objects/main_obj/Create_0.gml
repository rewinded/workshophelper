/// @description Insert description here
// You can write your code in this editor

//vars
sprite_filename = "N/A";
hurtbox_filename = "N/A";
current_sprite = -1;
current_hurtbox = -1;
current_image = 5;
zoom = 1;
pan_x = 0;
pan_y = 0;
origin_x = 0;
origin_y = 0;
hitbox_list = ds_list_create();
selected_hitbox = -1;
hover_hitbox = -1;
resize_mouse_x = -1;
resize_mouse_y = -1;
move_mouse_x = -1;
move_mouse_y = -1;

//sidebar stuff
sidebar_w = 350;
side_margin = 16;
top_margin = 16;
hitbox_list_top = top_margin+142;

//preview pane
preview_height = 100;

//image pane
img_left = 8;
img_right = room_width - sidebar_w - 8;
img_top = preview_height + 8;
img_bottom = room_height - 8;
img_line_w = 3;

//colors
light_color = make_color_rgb(80, 80, 80);
med_color = make_color_rgb(56, 56, 56);
dark_color = make_color_rgb(35, 35, 35);

var but = instance_create_depth(room_width-sidebar_w+side_margin, top_margin, -1, sprite_import_but);
but.type = "sprite";
but = instance_create_depth(room_width-sidebar_w+side_margin, top_margin+40, -1, sprite_import_but);
but.type = "hurtbox";
but = instance_create_depth(room_width-250, top_margin+120, -1, hitbox_add_but);
but = instance_create_depth(room_width-150, top_margin+120, -1, hitbox_clear_but);

vis_but = instance_create_depth(room_width-sidebar_w+side_margin, top_margin+120, -1, hitbox_vis_but);
vis_but.visible = false;

shape_but = instance_create_depth(room_width-sidebar_w+side_margin+24, top_margin+120, -1, hitbox_shape_but);
shape_but.visible = false;