/// scrSetBeeSprites(beeInstance, spriteSetName)

var beeInstance = argument0;
var spriteSetName = argument1;

with(beeInstance) {
  if(spriteSetName == D_BEE_SET) {
    spriteArray[FACING_RIGHT] = sprDBeeRight;
    spriteArray[FACING_UPRIGHT] = sprDBeeUpRight;
    spriteArray[FACING_UP] = sprDBeeUp;
    spriteArray[FACING_DOWN] = sprDBeeDown;
    spriteArray[FACING_DOWNRIGHT] = sprDBeeDownRight;
  } else if(spriteSetName == K_BEE_SET) {
    spriteArray[FACING_RIGHT] = sprKBeeRight;
    spriteArray[FACING_UPRIGHT] = sprKBeeUpRight;
    spriteArray[FACING_UP] = sprKBeeUp;
    spriteArray[FACING_DOWN] = sprKBeeDown;
    spriteArray[FACING_DOWNRIGHT] = sprKBeeDownRight;
  } else {
    spriteArray[FACING_RIGHT] = sprBeeTemplateRight;
    spriteArray[FACING_UPRIGHT] = sprBeeTemplateUpRight;
    spriteArray[FACING_UP] = sprBeeTemplateUp;
    spriteArray[FACING_DOWN] = sprBeeTemplateDown;
    spriteArray[FACING_DOWNRIGHT] = sprBeeTemplateDownRight;
  }
}
