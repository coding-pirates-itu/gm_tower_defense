if(collision_point(mouse_x, mouse_y, [id], true, 0))
{
    draw_set_circle_precision(64);
	draw_circle_colour(x, y, Radius, BorderColour, BorderColour, true);
	draw_circle_colour(x, y, Radius - 1, BorderColour, BorderColour, true);
}