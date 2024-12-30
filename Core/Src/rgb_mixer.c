
#include "lvgl/lvgl.h"
#include "rgb_mixer.h"

enum{SLIDER_R,SLIDER_G, SLIDER_B};

typedef struct {
    uint8_t slider_type;
    lv_obj_t* label;
}rgb_mixer_t;

//create base object
lv_obj_t* rectangle;

void slider_callback(lv_event_t* e)
{
    static uint8_t r, g, b;

    lv_obj_t* slider = lv_event_get_target(e);// get the for wich the event was sent "the target"
    rgb_mixer_t* user_data = lv_event_get_user_data(e);// get the user data of the target
    uint8_t value = lv_slider_get_value(slider);// get the slider value
    //now change the label value
    lv_label_set_text_fmt(user_data->label, "%d", value);
    //update the rectangle bg color
    if (user_data->slider_type == SLIDER_R)
    {
        r = value;
    }
    else if (user_data->slider_type == SLIDER_G)
    {
        g = value;
    }
    else if (user_data->slider_type == SLIDER_B)
    {
        b = value;
    }
    lv_obj_set_style_bg_color(rectangle, lv_color_make(r, g, b), LV_PART_MAIN);

}

void rgb_mixer_create_ui(void)
{
    static rgb_mixer_t r, g, b;

    r.slider_type = SLIDER_R;
    g.slider_type = SLIDER_G;
    b.slider_type = SLIDER_B;


    lv_obj_t* act_scr = lv_scr_act();
    //Create 3 Slider rgb
    lv_obj_t* slider_r = lv_slider_create(act_scr);
    lv_obj_t* slider_g = lv_slider_create(act_scr);
    lv_obj_t* slider_b = lv_slider_create(act_scr);
    //Set value range for the sliders
    lv_slider_set_range(slider_r, 0, 255);
    lv_slider_set_range(slider_g, 0, 255);
    lv_slider_set_range(slider_b, 0, 255);

    //Set width o the 3 slider
    lv_obj_set_width(slider_r, 400);
    lv_obj_set_width(slider_g, 400);
    lv_obj_set_width(slider_b, 400);

    //Alignment of the three slider
    lv_obj_align(slider_r, LV_ALIGN_TOP_MID, 0, 50);
    lv_obj_align_to(slider_g, slider_r, LV_ALIGN_TOP_MID,0,50);
    lv_obj_align_to(slider_b, slider_g, LV_ALIGN_TOP_MID, 0, 50);

    rectangle = lv_obj_create(act_scr);
    //Set width adn hight of the rectangle
    lv_obj_set_width(rectangle, 400);
    lv_obj_set_height(rectangle, 100);
    //Set the position of the rectangle
    lv_obj_align_to(rectangle, slider_b, LV_ALIGN_TOP_MID, 0, 50);
    //Create border for the rectangle
    lv_obj_set_style_border_color(rectangle, lv_color_black(), LV_PART_MAIN);
    lv_obj_set_style_border_width(rectangle, 5, LV_PART_MAIN);

    //Set Color for LV_PART_INDICATOR
    lv_obj_set_style_bg_color(slider_r, lv_palette_main(LV_PALETTE_RED), LV_PART_INDICATOR);// Set red color
    lv_obj_set_style_bg_color(slider_g, lv_palette_main(LV_PALETTE_GREEN), LV_PART_INDICATOR);// Set green color
    lv_obj_set_style_bg_color(slider_b, lv_palette_main(LV_PALETTE_BLUE), LV_PART_INDICATOR);// Set blue color
    //Set Color for LV_PART_KNOB
    lv_obj_set_style_bg_color(slider_r, lv_palette_main(LV_PALETTE_RED), LV_PART_KNOB);// Set red color
    lv_obj_set_style_bg_color(slider_g, lv_palette_main(LV_PALETTE_GREEN), LV_PART_KNOB);// Set green color
    lv_obj_set_style_bg_color(slider_b, lv_palette_main(LV_PALETTE_BLUE), LV_PART_KNOB);// Set blue color
    //Create labels
    lv_obj_t* heading = lv_label_create(act_scr);
    lv_label_set_text(heading, "RGB Mixer");
    lv_obj_align_to(heading, slider_r, LV_ALIGN_TOP_MID, 0, -40);


    lv_obj_t* bottom = lv_label_create(act_scr);
    lv_label_set_text(bottom, "linkedin.com/in/mahjoubhafyen");
    lv_obj_align_to(bottom, rectangle, LV_ALIGN_TOP_MID, 0, -40);

    r.label = lv_label_create(act_scr);
    lv_label_set_text(r.label, "0");
    lv_obj_align_to(r.label, slider_r, LV_ALIGN_TOP_MID, 0, -20);

    g.label = lv_label_create(act_scr);
    lv_label_set_text(g.label, "0");
    lv_obj_align_to(g.label, slider_g, LV_ALIGN_TOP_MID, 0, -20);

    b.label = lv_label_create(act_scr);
    lv_label_set_text(b.label, "0");
    lv_obj_align_to(b.label, slider_b, LV_ALIGN_TOP_MID, 0, -20);


    //Implement eventcb for the 3 slider
    lv_obj_add_event_cb(slider_r, slider_callback, LV_EVENT_VALUE_CHANGED, &r);
    lv_obj_add_event_cb(slider_g, slider_callback, LV_EVENT_VALUE_CHANGED, &g);
    lv_obj_add_event_cb(slider_b, slider_callback, LV_EVENT_VALUE_CHANGED, &b);





}
