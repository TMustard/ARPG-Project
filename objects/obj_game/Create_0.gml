global.one_second = game_get_speed(gamespeed_fps);
//If saving/loading is done differently, you might not be able to use the instance's ID here
global.destroyed = [];
instance_create_layer(0, 0, "Instances", obj_input);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";

global.font = font_add_sprite_ext(spr_font, _font_string, true, 1)
draw_set_font(global.font);
global.player_max_health = 4;
global.player_health = global.player_max_health 
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0; 
global.player_start_position = inst_game_start_position;


//audio_play_sound(sound_music, 10, true)
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height)

paused_ = false; 
paused_sprite_ = noone;
paused_sprite_scale_ = display_get_gui_width() / view_wport[0];
global.item[0] = noone;
global.item[1] = noone;
item_index_ = 0;

inventory_create(6);
inventory_add_item(obj_ring_item);
inventory_add_item(obj_sword_item);
inventory_add_item(obj_bomb_item);