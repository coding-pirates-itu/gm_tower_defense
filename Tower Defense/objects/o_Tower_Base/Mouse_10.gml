if (MenuSequence != noone)
{
    var menu = instance_create_layer(x, y, "UI", o_Menu);
    menu.Sequence = MenuSequence;
    menu.owner = id;
}