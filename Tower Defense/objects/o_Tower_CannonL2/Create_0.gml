event_inherited();


function MenuAction(name)
{
    if (name == "delete")
    {
        instance_create_layer(x, y, layer, o_TowerPlace);
        o_GameController.Money += 20;
    }
    else
    {
        show_debug_message("Unknown action " + name);
    }
    
    instance_destroy();
}