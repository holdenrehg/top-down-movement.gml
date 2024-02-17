capacity = 3;
items = array_create(capacity, undefined);
space_sprite_width = sprite_get_width(InventorySpaceSprite);
space_sprite_height = sprite_get_height(InventorySpaceSprite);
padding = 64;

function pickup(sprite)
{
	if(not is_full())
	{
		for(var i = 0; i < capacity; i++) {
			if(items[i] == undefined) {
				items[i] = {sprite_index: sprite};
				return;
			}
		}
	}
}

function use_item(item_index)
{
	var item = items[item_index];
	if(item) {
		// not very flexible, because we'll need to handle
		// scenarios for each item type here
		if(items[item_index].sprite_index == BerrySprite) {
			instance_find(Bunny, 0).add_health(1);
		}
		
		items[item_index] = undefined;
	}
}

/**
 * Inventory is full if the carried `items` is equal
 * to the carrying `capacity`.
 */
function is_full()
{
	for(var i = 0; i < capacity; i++) {
		if(items[i] == undefined) {
			return false;
		}
	}
	return true;
}

/**
 * If the player is focused on a specific inventory space
 * then return back the index of that space.
 */
function hovered_space()
{
	for(var i = 0; i < capacity; i++) {
		if(point_in_rectangle(
			mouse_x, mouse_y,
			room_width - space_sprite_width - padding, 100 + (160 * i),
			room_width - padding, 100 + (160 * i) + space_sprite_height
		)) {
			return i;
		}
	}
	return undefined;
}