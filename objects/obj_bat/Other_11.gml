/// @description Move State
set_sprite_facing();
add_movement_maxspeed(direction_, 0.05, 0.5);
move_movement_entity(true);
if alarm[1] <= 0 {
	alarm[1] = global.one_second * random_range(1, 3);
	direction_ = random(360);
}

if instance_exists(obj_player) && distance_to_object(obj_player) <= range_ {
	state_ = bat.attack;	
}