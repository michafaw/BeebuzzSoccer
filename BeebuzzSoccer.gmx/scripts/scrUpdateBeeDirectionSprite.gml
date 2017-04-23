/// scrUpdateBeeDirectionSprite(beeInstance)

var beeInstance = argument0;

with(beeInstance) {
  if(direction < 35) {
    sprite_index = spriteArray[FACING_RIGHT];
    image_xscale = abs(image_xscale);
  } else if(direction < 60) {
    sprite_index = spriteArray[FACING_UPRIGHT];
    image_xscale = abs(image_xscale);
  } else if(direction < 120) {
    sprite_index = spriteArray[FACING_UP];
    image_xscale = abs(image_xscale);
  } else if(direction < 145) {
    sprite_index = spriteArray[FACING_UPRIGHT];
    image_xscale = -1*abs(image_xscale);
  } else if(direction < 215) {
    sprite_index = spriteArray[FACING_RIGHT];
    image_xscale = -1*abs(image_xscale);
  } else if(direction < 240) {
    sprite_index = spriteArray[FACING_DOWNRIGHT];
    image_xscale = -1*abs(image_xscale);
  } else if(direction < 300) {
    sprite_index = spriteArray[FACING_DOWN];
    image_xscale = abs(image_xscale);
  } else if(direction < 330) {
    sprite_index = spriteArray[FACING_DOWNRIGHT];
    image_xscale = abs(image_xscale);
  } else {
    sprite_index = spriteArray[FACING_RIGHT];
    image_xscale = abs(image_xscale);
  }


}
