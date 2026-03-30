/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7FBCE86B
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 40AFEE05
/// @DnDArgument : "font" "fnt_Money"
/// @DnDSaveInfo : "font" "fnt_Money"
draw_set_font(fnt_Money);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1A195BCD
/// @DnDArgument : "color" "$FFFF0C14"
draw_set_colour($FFFF0C14 & $ffffff);
var l1A195BCD_0=($FFFF0C14 >> 24);
draw_set_alpha(l1A195BCD_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 74A6D371
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 23FE2347
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "o_GameController.Money"
draw_text(x + 0, y + 0,  + string(o_GameController.Money));