function map(items, fn)
{
	var new_items = [];
	var length = array_length(items);
	
	for(var index = 0; index < length; index++)
	{
		array_push(new_items, fn(items[index]));
	}
	
	return new_items;
}

function any(items, fn=undefined)
{
	var res = false;
	var length = array_length(items);
	
	for(var index = 0; index < length; index++)
	{
		if(items[index] == true)
		{
			res = true;
			break;
		}
	};
	
	return res;
}