genx1 = o_player.x + 360;
genx2 = o_player.x - 360;

geny1 = o_player.y + 250;
geny2 = o_player.y - 250;

get_genx = irandom_range(0,1);
get_geny = irandom_range(0,1);

if(get_genx) genx = genx1; else genx = genx2;
if(get_geny) geny = geny1; else geny = geny2;

if(alarm[0] == -1) alarm[0] = gentime;