if(o_player.x>x) 
{
	instance_create_layer(x,y,"att",o_stick_throw);
}
else if(o_player.x<x)
{
	obj = instance_create_layer(x,y,"att",o_stick_throw);
	obj.hspeed *= -1;
	
}

alarm[0] = 60;