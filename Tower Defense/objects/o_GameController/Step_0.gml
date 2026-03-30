if (o_LevelConfig.enemy_count > 0)
{
    spawn_timer++;
}

if (spawn_timer >= o_LevelConfig.spawn_rate)
{
    spawn_timer = 0;
    o_LevelConfig.enemy_count--;

    var path = enemy_paths[ irandom(array_length(enemy_paths) - 1) ]
    var spawn_x = path_get_point_x(path, 0);
    var spawn_y = path_get_point_y(path, 0);
    var e = instance_create_layer(spawn_x, spawn_y, "Instances", o_LevelConfig.enemy_types[0]);
    e.Lives = e.Lives * o_LevelConfig.enemy_hp_multiplier;
    with (e)
    {
        path_start(path, Speed, path_action_stop, true);
    }
}