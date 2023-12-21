if room=room_lobby  
{
if audio_is_playing(snd_g1_song) then audio_stop_sound(snd_g1_song);
if audio_is_playing(snd_g2_song) then audio_stop_sound(snd_g2_song);
if audio_is_playing(snd_g3_song) then audio_stop_sound(snd_g3_song);
audio_play_sound(snd_lobby,10,true)
}
if room=room_game {
if audio_is_playing(snd_lobby) then audio_stop_sound(snd_lobby);
if global.game=1 then audio_play_sound(snd_g1_song,10,true);
if global.game=2 then audio_play_sound(snd_g2_song,10,true);
if global.game=3 then audio_play_sound(snd_g3_song,10,true);
}

global.jackpot_g1=irandom(50000)
global.jackpot_g2=irandom(40000)
global.jackpot_g3=irandom(45000)

