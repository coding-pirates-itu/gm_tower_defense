if (event_data[? "message"] == "Shoot" && event_data[? "element_id"] == WeaponId)
{
    var b = instance_create_layer(x, y, "Projectiles", Projectile);
    b.Target = WeaponTarget;
    WeaponTarget = noone;
    alarm_set(0, ShootFrequency);
}
