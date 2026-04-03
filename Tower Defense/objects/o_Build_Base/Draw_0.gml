draw_self();
if (show_tooltip && Price > 0)
{
    draw_sprite_stretched(
        s_Money, 0,
        x - 64, y - 128, 128, 64);
    draw_text(x, y - 96, string(Price));
}