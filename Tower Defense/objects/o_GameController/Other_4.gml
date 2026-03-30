var paths = layer_get_all_elements(layer_get_id("Path"));
enemy_paths = [];


for (var i = 0; i < array_length(paths); i++)
{
	var path = paths[i];
    if (layer_get_element_type(path) == layerelementtype_path)
    {
        array_push(enemy_paths, layer_path_get_id(path));
    }
}

spawn_timer = 0;
