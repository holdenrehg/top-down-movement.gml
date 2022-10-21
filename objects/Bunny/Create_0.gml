function set_animation_state(animation)
{
	var details = variable_struct_get(animations, animation);
	animation_frames = details.frames;
	sprite_speed = details.speed;
}

// ----------------------------------------------------------------------------

move_speed = 6;

animations = {
	idling: { frames: [0, 2],   speed: 3 },
	left:   { frames: [10, 12], speed: 5 },
	right:  { frames: [14, 16], speed: 5 },
	up:     { frames: [6, 8],   speed: 5 },
	down:   { frames: [2, 4],   speed: 5 },
};

inputs = {
	left:  [ord("A"), vk_left],
	right: [ord("D"), vk_right],
	up:    [ord("W"), vk_up],
	down:  [ord("S"), vk_down],
};

set_animation_state("idling");
