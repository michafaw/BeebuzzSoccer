/// scrSetBeeSprites(beeInstance, spriteSetName)

var beeInstance = argument0;
var spriteSetName = argument1;

with(beeInstance) {
  if(spriteSetName == D_BEE_SET) {
    spriteArray[FACING_RIGHT] = sprBeeTemplateRight;
    spriteArray[FACING_UPRIGHT] = sprBeeTemplateUpRight;
    spriteArray[FACING_UP] = sprBeeTemplateUp;
    spriteArray[FACING_DOWN] = sprBeeTemplateDown;
    spriteArray[FACING_DOWNRIGHT] = sprBeeTemplateDownRight;
  } else if(spriteSetName == K_BEE_SET) {
    spriteArray[FACING_RIGHT] = sprBeeTemplateRight;
    spriteArray[FACING_UPRIGHT] = sprBeeTemplateUpRight;
    spriteArray[FACING_UP] = sprBeeTemplateUp;
    spriteArray[FACING_DOWN] = sprBeeTemplateDown;
    spriteArray[FACING_DOWNRIGHT] = sprBeeTemplateDownRight;
  } else {
    spriteArray[FACING_RIGHT] = sprBeeTemplateRight;
    spriteArray[FACING_UPRIGHT] = sprBeeTemplateUpRight;
    spriteArray[FACING_UP] = sprBeeTemplateUp;
    spriteArray[FACING_DOWN] = sprBeeTemplateDown;
    spriteArray[FACING_DOWNRIGHT] = sprBeeTemplateDownRight;
  }


}
