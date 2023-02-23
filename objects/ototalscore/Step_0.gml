if keyboard_check_pressed(vk_space) && i< 0
{
audio_stop_sound(gameover)
room_goto(pregame)
}

i--

