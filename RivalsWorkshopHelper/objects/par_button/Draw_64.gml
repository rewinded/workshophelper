/// @description Insert description here
// You can write your code in this editor

display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Determination);
draw_text(x+sprite_width*.5, y+sprite_height*.5, text);