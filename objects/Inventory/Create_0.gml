items = [];
capacity = 3;

function pickup(sprite)
{
	if(not is_full())
	{
		array_push(items, {sprite_index: sprite});
	}
}

/**
 * Inventory is full if the carried `items` is equal
 * to the carrying `capacity`.
 */
function is_full()
{
	return array_length(items) >= capacity;
}