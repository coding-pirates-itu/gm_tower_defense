// Expects property `owner`,
// which will be destroyed upon action.
menuId = layer_sequence_create("UI", x, y, seq_BuildMenu);
menu = layer_sequence_get_instance(menuId);
menu.owner = id;


function Action(name, price)
{
    if (name == "gun")
    {
        instance_create_layer(x, y, layer, o_Tower_GunL1);
    }
    else if (name == "cannon")
    {
        instance_create_layer(x, y, layer, o_Tower_CannonL2);
    }
    else
    {
        show_debug_message("Unknown tower " + name);
    }
    
    o_GameController.Money -= price;
    instance_destroy();
    instance_destroy(owner);
}