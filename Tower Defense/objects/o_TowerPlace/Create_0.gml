function MenuAction(name)
{
    if (name == "gun")
    {
        instance_create_layer(x, y, layer, o_Tower_GunL1);
    }
    else if (name == "cannon")
    {
        instance_create_layer(x, y, layer, o_Tower_CannonL1);
    }
    else
    {
        show_debug_message("Unknown tower " + name);
    }
    
    instance_destroy();
}