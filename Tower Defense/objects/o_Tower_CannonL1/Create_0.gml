event_inherited();


function MenuAction(name)
{
    if (name == "cannon")
    {
        instance_create_layer(x, y, layer, o_Tower_CannonL2);
    }
    else if (name == "delete")
    {
        instance_create_layer(x, y, layer, o_TowerPlace);
        o_GameController.Money += 10;
    }
    else
    {
        show_debug_message("Unknown action " + name);
    }
    
    instance_destroy();
}