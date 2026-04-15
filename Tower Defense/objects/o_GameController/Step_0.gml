if (!instance_exists(global.LevelConfig)) exit;
    
if (current_wave >= array_length(global.LevelConfig.Waves))
{
    if (!instance_exists(o_Enemy_Base))
    {
        room_goto_next();
    }
    exit;
}
    
var wave = global.LevelConfig.Waves[current_wave];

if (current_spawned >= wave.count)
{
    current_wave++;
    current_spawned = 0;
    exit;
}

spawn_timer++;
if (spawn_timer < wave.spawn_delay) exit;

spawn_timer = 0;
current_spawned++;

enemy_type = wave.types[irandom(array_length(wave.types) - 1)];

var spawn_x = path_get_point_x(wave.path, 0);
var spawn_y = path_get_point_y(wave.path, 0);
var e = instance_create_layer(spawn_x, spawn_y, "Instances", enemy_type);
with (e)
{
    path_start(wave.path, Speed, path_action_stop, true);
}