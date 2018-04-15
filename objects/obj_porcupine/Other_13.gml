/// @description Attack State
image_speed = 0.35;
if animation_hit_frame(3) {
	var _damage = 1;
	var _knockback = 4;
	var _life = 1;
	create_hitbox(spr_porcupine_hitbox, x, y - 8, 0, _life, [obj_player], _damage, _knockback);	
}

if animation_hit_frame(image_number - 1) {
	state_ = porcupine.idle;
	sprite_index = spr_porcupine_run;
	alarm[1] = 2 * game_get_speed(gamespeed_fps);
}