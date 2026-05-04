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

    WeaponDirection = point_direction(x, y, closest.x, closest.y);
    var curAngle = layer_sequence_get_angle(WeaponId);
    var newAngle = lerp(curAngle, WeaponDirection, 0.8);
    layer_sequence_angle(WeaponId, newAngle);
    
    if (! CanShoot) exit;
    WeaponTarget = closest;
    layer_sequence_play(WeaponId);
    CanShoot = false;
}

ds_list_destroy(enemies);