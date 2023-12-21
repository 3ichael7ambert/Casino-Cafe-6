flipside=choose(0,1);
flipspeed=random(0.2);
rotatespeed=random(10);
image_xscale=random(1);
vspeed=-random(8)-8;
hspeed=random_range(-5,5);
gravity=random(0.20)+0.10;
if global.game=1 then {image_single=0};
if global.game=2 then {image_single=1};
if global.game=3 then {image_single=1};

