initialize_movement_entity(.5, 1, obj_solid);
initialize_hurtbox_entity();
image_speed = 0;
acceleration_ = .5; 
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}


enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = starting_state_ ;

// Lookup table for sprite movement 
sprite_[player.move, dir.right] = spr_player_right;
sprite_[player.move, dir.up] = spr_player_up;
sprite_[player.move, dir.left] = spr_player_right;
sprite_[player.move, dir.down] = spr_player_down;

// Lookup table for attacking with sword
sprite_[player.sword, dir.right] = spr_player_attack_right;
sprite_[player.sword, dir.up] = spr_player_attack_up;
sprite_[player.sword, dir.left] = spr_player_attack_right;
sprite_[player.sword, dir.down] = spr_player_attack_down;

// Lookup table for rolling
sprite_[player.evade, dir.right] = spr_player_roll_right;
sprite_[player.evade, dir.up] = spr_player_roll_up;
sprite_[player.evade, dir.left] = spr_player_roll_right;
sprite_[player.evade, dir.down] = spr_player_roll_down;

//Lookup table for being hit
sprite_[player.hit, dir.right] = spr_player_right;
sprite_[player.hit, dir.up] = spr_player_up;
sprite_[player.hit, dir.left] = spr_player_right;
sprite_[player.hit, dir.down] = spr_player_down;




