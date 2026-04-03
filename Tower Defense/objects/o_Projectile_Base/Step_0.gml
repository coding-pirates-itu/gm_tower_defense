if (!instance_exists(Target)) {
    instance_destroy();
    exit;
}

var dir = point_direction(x, y, Target.x + Target.hspeed, Target.y + Target.vspeed);
x += lengthdir_x(BulletSpeed, dir);
y += lengthdir_y(BulletSpeed, dir);
image_angle = dir;

if (point_distance(x, y, Target.x, Target.y) < sprite_width) {
    Target.TakeDamage(Damage);
    instance_destroy();
}