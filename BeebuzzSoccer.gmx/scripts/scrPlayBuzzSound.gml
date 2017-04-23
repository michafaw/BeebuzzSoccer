/// scrPlayBuzzSound(beeInstance)

var beeInstance = argument0;

if(beeInstance.activeSound == noone || !audio_is_playing(beeInstance.activeSound)) {
  var buzzSound = audio_play_sound(choose(sndDBuzz, sndKBuzz), 0, false);
  beeInstance.activeSound = buzzSound;
  
  switch (choose(0, 4, 7, -5, -8)) {
    case 0: 
      audio_sound_pitch(buzzSound, 1.0);
      break;
    case 4:
      audio_sound_pitch(buzzSound, 1.2599);
      break;
    case 7:
      audio_sound_pitch(buzzSound, 1.4983);
      break;
    case 12:
      audio_sound_pitch(buzzSound, 2.0);
      break;
    case -12:
      audio_sound_pitch(buzzSound, 0.5); 
      break;
    case -8:
      audio_sound_pitch(buzzSound, 0.62995); 
      break;
    case -5:
      audio_sound_pitch(buzzSound, 0.7492);
      break;
    default:
      break;
  }
}
