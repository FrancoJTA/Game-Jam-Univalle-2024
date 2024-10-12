event_inherited();
if(!estaca)
{
	x_speed = 1;
}

estaca = 0;
if(hspeed > 0)
{
	if(place_meeting(x+x_check,y,o_solid))
	{
		c_flip();
	}
	else if (collision_rectangle(x+18,y,x+20,y+2,o_solid,0,1) == noone)
	{
		c_flip();
	}
}
if(hspeed < 0)
{
	if(place_meeting(x-x_check,y,o_solid))
	{
		c_flip();
	}
	else if (collision_rectangle(x-18,y,x-20,y+2,o_solid,0,1) == noone)
	{
		c_flip();
	}
} 