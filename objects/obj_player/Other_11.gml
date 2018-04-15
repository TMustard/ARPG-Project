/// @description Sword State
image_speed = 0.8; 

if animation_hit_frame(1) {
	var _angle = direction_facing_ * 90;
	var _life = 3;
	var _damage = 1;
	var _knockback = 8;
	var _hitbox = create_hitbox(spr_sword_hitbox, x, y, _angle, _life, [obj_enemy], _damage, _knockback);
	
	//For adjusting hitbox.y according to sprite, will need to be changed if you use a different player sprite.
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; 
		break;
		default: _hitbox.y -= 8; 
		break;
	}
}

if animation_hit_frame(image_number - 1) {
	state_ = player.move;
}