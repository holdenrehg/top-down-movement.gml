var float_factor = (0.2 * sin(0.001 * current_time));

y += float_factor;

// Draw a shadow...
var distance_from_ground = original_y - y;
var shadow_width = 25 + (distance_from_ground * 0.25);
draw_set_color(c_black);
draw_set_alpha(0.2);
draw_ellipse(
	original_x + (sprite_width / 2) - shadow_width, original_y - float_factor + sprite_height + 20, 
	original_x + (sprite_width / 2) + shadow_width, original_y - float_factor + sprite_height + 30, 
	false
);

draw_self();