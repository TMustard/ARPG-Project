///@arg hitbox
var _hitbox = argument0;
var _is_target = is_target(object_index, _hitbox.targets_);

return !invincible_ && _is_target;