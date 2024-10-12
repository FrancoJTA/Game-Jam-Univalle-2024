// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_cementery(){
	if(keyboard_check_pressed(ord("Q")) and ground) //Habilidad de apoyo - Estaca Bendita
	{
		instance_create_layer(x,y,"instances",o_estaca);
	}
	if(keyboard_check(ord("E"))) //Ataque - Latigo proyectil
	{
		if(canShoot)
		{
			obj = instance_create_layer(x,y + weapon_mody, "att", o_latigo)
			obj.right = right;
			canShoot = 0;
			alarm[0] = reload_speed;
		}
	}
	if(keyboard_check_pressed(vk_shift)) //Habilidad de movimiento - Dash de sombritas
	{
		ok = 1;
		dash = 0;
		i = 1;
		if(right)
		{
			while(ok and i < 128)
			{
				ok = place_free(x+i,y)
				dash = i;
				i++;
			}
			x += dash - 1;
		}
		else
		{
			while(ok and i < 128)
			{
				ok = place_free(x-i,y)
				dash = i;
				i++;
			}
			x -= dash - 1;
		}
	}
}