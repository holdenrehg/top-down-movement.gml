var hoverered_index = hovered_space();

draw_set_alpha(0.5);
draw_set_color(c_yellow);
draw_rectangle(
	room_width - (padding * 2) - space_sprite_width, 0,
	room_width, room_height,
	false
);

// draw inventory space tiles...
for(var i = 0; i < capacity; i++) {
	draw_set_alpha(hoverered_index == i ? 0.8 : 1);
	draw_sprite(
		InventorySpaceSprite, 0, 
		room_width - space_sprite_width - padding, 100 + (160 * i)
	);
}

// draw item sprites...
for(var i = 0; i < array_length(items); i++) {
	if(items[i] == undefined) continue;
	draw_sprite(
		items[i].sprite_index, 0,
		room_width - space_sprite_width - padding, 100 + (160 * i)
	);
};
