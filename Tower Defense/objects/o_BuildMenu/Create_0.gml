menuId = layer_sequence_create("UI", x, y, seq_BuildMenu);
menu = layer_sequence_get_instance(menuId);
menu.owner = id;


function Action(name)
{
    if (name == "gun")
    {
        instance_create_layer(x, y, layer, o_Tower_Gun);
    }
    else if (name == "cannon")
    {
        instance_create_layer(x, y, layer, o_Tower_Cannon);
    }
    
    instance_destroy();
    instance_destroy(owner);
}