if !instance_exists(obj_player) exit;

var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

if _distance_to_player < 16 {
state_ = porcupine_attack();
image_index = 0;
sprite_index = 0;
}