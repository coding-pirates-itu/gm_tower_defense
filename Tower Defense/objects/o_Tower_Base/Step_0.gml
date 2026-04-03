if (! can_shoot) exit;
    
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

    var b = instance_create_layer(x, y, "Projectiles", Projectile);
    b.Target = closest;

        
    can_shoot = false;
    alarm_set(0, ShootFrequency);
}

ds_list_destroy(enemies);