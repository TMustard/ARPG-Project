if health_ <= 0 exit;
health_ -= other.damage_;
state_ = enemy.hit;
set_movement(point_direction(other.x, other.y, x, y), other.knockback_)