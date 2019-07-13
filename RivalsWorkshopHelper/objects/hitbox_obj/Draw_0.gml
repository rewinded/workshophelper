/// @description Insert description here
// You can write your code in this editor
if (vis != 2){
	var hitbox_alpha = .5 - .4*vis;
	draw_sprite_ext(shape_sprites[shape], 0, relative_x(x), relative_y(y), (w/200)*main_obj.zoom, (h/200)*main_obj.zoom, 0, c_white, hitbox_alpha);
	//resize boxes
	if (ds_list_find_value(main_obj.hitbox_list, main_obj.selected_hitbox) == id){
		for (var i = -1; i < 2; i++){
			for (var j = -1; j < 2; j++){
				if (i == 0 && j == 0) continue;
				var dot_img = 0;
				if (selected_resize_dot[0] == i && selected_resize_dot[1] == j) dot_img = 1;
				draw_sprite(hitbox_resize_spr, dot_img, relative_x(x)+i*w*.5*main_obj.zoom, relative_y(y)+j*h*.5*main_obj.zoom);
			}
		}
	}
}