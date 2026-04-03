if (menu == noone)
{
    menuId = layer_sequence_create("UI", x, y, Sequence);
    menu = layer_sequence_get_instance(menuId);
    menu.owner = id;
}