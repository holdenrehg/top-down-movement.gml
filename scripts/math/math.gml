/**
 * Restricts num to the given range.
 *
 * Out of bounds both ways (over or under) will return
 * the beginning of the range.
 *
 * Example:
 *     bound(2, [3, 6]) => 3
 *     bound(9.9, [4, 10]) => 9.9
 *     bound(10, [4, 10]) => 4
 *     bound(11, [4, 10]) => 4
 *
 */
function bound(num, range)
{
	if(num >= range[1] or num < range[0])
	{
		return range[0];
	}
	
	return num;
}