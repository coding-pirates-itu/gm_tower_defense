if (menu == noone)
{
    menuId = layer_sequence_create("UI", x, y, Sequence);
    menu = layer_sequence_get_instance(menuId);
    menu.owner = id;
}

if (! collision_point(mouse_x, mouse_y, id, true, false))
{
    instance_destroy();
}
