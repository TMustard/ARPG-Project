/// @description Attack State
if !instance_exists(obj_player) {
	state_ = bat.move;
	exit;
}

if distance_to_object(obj_player) > range_ {
	state_ = bat.move;	
}

var _direction = point_direction(x, y, obj_player.x, obj_player.y);
var _x_speed = lengthdir_x(speed_, _direction)
if _x_speed != 0 {
	image_xscale = sign(_x_speed)	
}

add_movement_maxspeed(_direction, 0.123, 1);
move_movement_entity(true);

var _player = instance_place(x, y, obj_player);
if _player {
	create_hitbox(sprite_index, x, y, 0, 1, [obj_player], 1, 5);
}