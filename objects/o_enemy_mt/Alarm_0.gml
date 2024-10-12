/// @description shoot delay
obj=instance_create_layer(x, y-28, "att", o_waste);
if(image_xscale==-1)obj.hspeed*=-1;
alarm[1]=reloadSpeed;
hspeed=x_speed_temp;
if(hspeed>0)
{
	image_xscale=1;
}
else
{
	image_xscale=-1;
}