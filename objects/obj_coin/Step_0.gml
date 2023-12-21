if flipside=1 then image_xscale+=flipspeed;
if flipside=0 then image_xscale-=flipspeed;
if image_xscale<0 then flipside=1;
if image_xscale>1 then flipside=0;
if flipside=0 then image_angle-=rotatespeed;
if flipside=1 then image_angle+=rotatespeed;

