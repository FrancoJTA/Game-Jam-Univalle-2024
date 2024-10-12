event_inherited();

if(canShoot)
{
	if(abs(o_player.x - x) < range_x and abs(o_player.y - y) < range_y)
	{
		obj=instance_create_layer(x,y-28,"att",o_shot_disc);
		if(image_xscale = -1) obj.hspeed *= -1;
		canShoot = 0;
		alarm[0] = reload_speed;
	}
}

if(o_player.x>x){
	hspeed=x_speed;
	image_xscale=1;
}
else{
	hspeed=-x_speed;
	image_xscale=-1;
}
if(hspeed>0){

	if(place_meeting(x+x_check,y,o_terrain)){
		hspeed=0;
	}
	else if (collision_rectangle(x+18,y,x+20,y+2,o_terrain,0,1) == noone)
	{
		hspeed=0;
	}
}

if(hspeed<0){
	if(place_meeting(x-x_check,y,o_terrain)){
		hspeed=0;
	}
	else if (collision_rectangle(x-18,y,x-20,y+2,o_terrain,0,1) == noone)
	{
		hspeed=0;
	}
}