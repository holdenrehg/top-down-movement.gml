// Draw a shadow...
draw_set_color(c_black);
draw_set_alpha(0.2);
draw_ellipse(
	x + (sprite_width / 2) - 50, y + sprite_height - 25 - 110, 
	x + (sprite_width / 2) + 50, y + sprite_height - 110, 
	false
);
draw_set_alpha(1);

// Draw self...
image_index = bound(image_index, animation_frames);
sprite_set_speed(sprite_index, sprite_speed, spritespeed_framespersecond);
draw_self();

// Draw health...
draw_set_font(DefaultFont);
draw_set_color(c_red);
draw_text(
	x + (sprite_width / 2) - 30, y + 10, 
	string(hitpoints) + "/" + string(hitpoints_cap)
);