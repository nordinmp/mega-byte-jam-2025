/// @description Insert description here
// You can write your code in this editor
draw_self()

// i Step Event
image_index += 1;

image_speed = 0.2

if floor(image_index) >= image_number - 1
{
    // sikre at sidste frame vises præcist
    image_index = image_number - 1;
    instance_destroy();
}
