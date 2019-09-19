/// @description Insert description here
// You can write your code in this editor
//SIDE BAR
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
var left_start = room_width-sidebar_w+side_margin;
draw_text(left_start+40, top_margin+26, "Sprite: " + sprite_filename);
draw_text(left_start+40, top_margin+26+40, "Hurtbox: " + hurtbox_filename);
draw_text(left_start, top_margin+26+80, "Origin: (" + string(origin_x) + ", " + string(origin_y) + ") - Right Click");
draw_line_width_color(left_start, top_margin+114, room_width-side_margin, top_margin+114, 2, light_color, light_color);
draw_text(left_start, top_margin+140, "Hitboxes:");