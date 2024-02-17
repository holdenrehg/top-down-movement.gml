var hovered_index = hovered_space();
var is_mouse_clicked = mouse_check_button_released(mb_left);

if(is_mouse_clicked and hovered_index != undefined) {
	use_item(hovered_index);
}