if (image_single == 0)
{
    exit;
}

image_single = 0;
with (bet1_button) {image_single = 0}
with (bet5_button) {image_single = 0}
with (bet10_button) {image_single = 0}
is_draw = 0;
deal_cards();
with (obj_draw_button) {image_single = 1}

