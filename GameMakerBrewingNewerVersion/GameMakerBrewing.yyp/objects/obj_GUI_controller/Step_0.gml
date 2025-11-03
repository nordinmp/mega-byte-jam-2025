var lay_id = layer_get_id("Kitchen_UI");


if (room == rm_kitchen)
{
    layer_set_visible(lay_id, true);
}
else
{
    layer_set_visible(lay_id, false);
}