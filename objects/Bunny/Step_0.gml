// movement...
// ----------------------------------------------------------------------------
var pressed_left = any(map(inputs.left, keyboard_check));
var pressed_right = any(map(inputs.right, keyboard_check));
var pressed_up = any(map(inputs.up, keyboard_check));
var pressed_down = any(map(inputs.down, keyboard_check));

if(pressed_left)       set_animation_state("left");
else if(pressed_right) set_animation_state("right");
else if(pressed_up)    set_animation_state("up");
else if(pressed_down)  set_animation_state("down");
else                   set_animation_state("idling");

x += (pressed_right - pressed_left) * move_speed * fixed_delta_time();
y += (pressed_down - pressed_up) * move_speed * fixed_delta_time();

// collision detection...
// ----------------------------------------------------------------------------
var inventory = instance_find(Inventory, 0);
var berry = instance_place(x, y, Berry);
if(berry and !inventory.is_full()) {
	instance_destroy(berry);
	inventory.pickup(BerrySprite);
}
