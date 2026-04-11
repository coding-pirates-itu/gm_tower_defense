var enemies = ds_list_create();
var count = collision_circle_list(x, y, Radius, o_Enemy_Base, false, true, enemies, false);
if (count > 0)
{
    var closest = noone;
    var closest_pos = -1;
    
    for (var i = 0; i < count; i++)
    {
        var e = enemies[| i];
    
        if (e.path_position > closest_pos)
        {
            closest_pos = e.path_position;
            closest = e;
        }
    }

    weapon_direction = point_direction(x, y, closest.x, closest.y);
    var curAngle = layer_sequence_get_angle(weaponId);
    var newAngle = lerp(curAngle, weapon_direction, 0.8);
    layer_sequence_angle(weaponId, newAngle);
    
    if (! can_shoot) exit;
    layer_sequence_play(weaponId);
    var b = instance_create_layer(x, y, "Projectiles", Projectile);
    b.Target = closest;
    can_shoot = false;
    alarm_set(0, ShootFrequency);
}

ds_list_destroy(enemies);