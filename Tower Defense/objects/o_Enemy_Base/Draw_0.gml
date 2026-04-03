draw_self();

if (hp < Lives)
{
    draw_healthbar(
        x + -sprite_width / 2,
        y + -sprite_height,
        x + sprite_width / 2,
        y + -sprite_height + 8,
        hp / Lives * 100,
        c_black, c_red, c_green, 0, true, true);
}