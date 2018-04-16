create_animation_effect(spr_death_effect, x, y - 8, 0.6, true)
if chance(0.75) {
	var _item = choose(obj_gem_pickup, obj_heart_pickup);
	instance_create_layer(x, y-8, "instances", _item);	
}