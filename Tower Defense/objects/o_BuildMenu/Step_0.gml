// Get icons
if (menu == noone)
{
    menu = layer_sequence_get_instance(menuId);
    gun_bbox = GetBbox(menu, s_BuyGun);
    cannon_bbox = GetBbox(menu, s_BuyCannon);
}

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var radius = sprite_get_width(s_TowerPlace) / 2;
var d = point_distance(mx, my, x, y);
if (d > radius)
{
    instance_destroy();
    exit;
}

var pos = menu.headPosition;
if (pos >= menu_stop && !menu.paused)
{
    menu.headPosition = menu_stop;
    layer_sequence_pause(menuId);
}

var inGun = point_in_rectangle(mx, my, gun_bbox.left, gun_bbox.top, gun_bbox.right, gun_bbox.bottom);
var inCannon = point_in_rectangle(mx, my, cannon_bbox.left, cannon_bbox.top, cannon_bbox.right, cannon_bbox.bottom);

if (!inGun && !inCannon)
{
    hover = HoverStates.None;
    menu_stop = menu_appear_end;
}
else if (inGun && hover != HoverStates.Gun)
{
    hover = HoverStates.Gun;
    menu.headPosition = menu_select_gun_start;
    menu_stop = menu_select_gun_end;
    layer_sequence_play(menuId);
}
else if (inCannon && hover != HoverStates.Cannon)
{
    hover = HoverStates.Cannon;
    menu.headPosition = menu_select_cannon_start;
    menu_stop = menu_select_cannon_end;
    layer_sequence_play(menuId);
}
