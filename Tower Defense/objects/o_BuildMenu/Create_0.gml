enum HoverStates
{
    None,
    Gun,
    Cannon
}

gun_price = 50;
cannon_price = 100;

hover = HoverStates.None;

menu = noone;
menu_appear_start = 0;
menu_appear_end = 30;
menu_select_gun_start = 31;
menu_select_gun_end = 45;
menu_select_cannon_start = 46;
menu_select_cannon_end = 60;

menuId = layer_sequence_create("UI", x, y, seq_BuildMenu);
menu_stop = menu_appear_end;