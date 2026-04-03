if (!instance_exists(o_BuildMenu)) {
    var menu = instance_create_layer(x, y, "UI", o_BuildMenu);
    menu.owner = id;
}
