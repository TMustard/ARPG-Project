if hurtbox_entity_can_be_hit_by(other) {
	instance_destroy();
	create_animation_effect(spr_grass_effect, x, y, random_range(.4, .8), true)
}