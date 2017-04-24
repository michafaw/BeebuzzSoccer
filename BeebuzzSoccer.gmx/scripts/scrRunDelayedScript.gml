/// scrRunDelayedScript(scriptToRun, delayInSteps)

var scriptToRun = argument0;
var delayInSteps = argument1;

var delayedScriptRunner = instance_create(0, 0, objDelayedScriptRunner);
delayedScriptRunner.scriptToRun = scriptToRun;
delayedScriptRunner.alarm[0] = delayInSteps;
