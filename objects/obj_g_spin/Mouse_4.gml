action_sprite_transform(0.85, 0.85, 0, 0);
if global.spin=0 and global.money>=global.bet 
{
if global.freespins=0 { global.money-=global.bet; global.spin=1;}
if global.freespins>0 { global.freespins-=1; global.spin=1;}
r1l1.animate=1;r2l1.animate=1;r3l1.animate=1;r4l1.animate=1;r5l1.animate=1;
r1l2.animate=1;r2l2.animate=1;r3l2.animate=1;r4l2.animate=1;r5l2.animate=1;
r1l3.animate=1;r2l3.animate=1;r3l3.animate=1;r4l3.animate=1;r5l3.animate=1;
}


