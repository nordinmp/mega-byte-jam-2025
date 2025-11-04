var kitchen_ui = layer_get_id("Kitchen_UI");
var letter_ui = layer_get_id("Letter_UI");
var paused_ui = layer_get_id("Paused_UI");

if (room == rm_kitchen)
{
    layer_set_visible(kitchen_ui, true);
}
else
{
    layer_set_visible(kitchen_ui, false);
}


if (global.overlay == "Letter")
{
    layer_set_visible(letter_ui, true);
}
else
{
    layer_set_visible(letter_ui, false);
}

if (global.overlay == "Pause")
{
    layer_set_visible(paused_ui, true);
}
else
{
    layer_set_visible(paused_ui, false);
}