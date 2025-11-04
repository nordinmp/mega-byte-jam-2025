var kitchen_id = layer_get_id("Kitchen_UI");
var letter_ui = layer_get_id("Letter_UI");

if (room == rm_kitchen)
{
    layer_set_visible(kitchen_id, true);
}
else
{
    layer_set_visible(kitchen_id, false);
}


if (global.overlay == "Letter")
{
    layer_set_visible(letter_ui, true);
}
else
{
    layer_set_visible(letter_ui, false);
}