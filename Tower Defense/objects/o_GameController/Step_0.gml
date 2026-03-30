if (!variable_instance_exists(room, "spawn_rate")) {
    exit;
}

spawn_timer++;

if (spawn_timer >= spawn_rate)
{
    spawn_timer = 0;

    var e = instance_create_layer(spawn_x, spawn_y, "Instances", enemy_types[0]);
    e.Lives = e.Lives * enemy_hp_multiplier;
    e.path_id = global.enemy_path;
    path = enemy_paths[ irandom(array_length(enemy_paths) - 1) ]
    e.path_start(path, Speed, path_action_stop, false);    
}