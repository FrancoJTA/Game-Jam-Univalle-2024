function c_hook(){
	hook_point=instance_nearest(x,y,o_hook_point);
	if(hook_point!=noone)
		if(point_distance(hook_point.x,hook_point.y,x,y)>200 || hook_point.y>y) hook_point=noone;

	
	if (keyboard_check_pressed(vk_shift) && !grappling_active && !ground && hook_point!=noone)
	{
	    // Engancha el gancho a la posición del ratón
	    grappling_x = hook_point.x+16;
	    grappling_y = hook_point.y+16;
    
	    // Calcula la distancia inicial (longitud de la cuerda)
	    rope_length = point_distance(x, y, grappling_x, grappling_y);
    
	    angle = point_direction(grappling_x, grappling_y,x, y);     
	    grappling_active = true;
	    angular_velocity = 0;
	}

	if (grappling_active)
	{
	    angular_acc = -0.2*dcos(angle);

	    angular_velocity += angular_acc;



	    angle += angular_velocity;

	    angular_velocity *= 0.99;
	    rx = grappling_x + lengthdir_x(rope_length, angle ); 
	    ry = grappling_y + lengthdir_y(rope_length, angle );
	
		x_speed=rx-x;
		y_speed=ry-y;
		
		if (collision_rectangle(x-19,y,x+19,y+1,o_terrain,0,1) and !collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1))
		{
			grappling_active = false;
		}

		if (keyboard_check_pressed(vk_space))
		{
			ground = 0;
			coyote_c = 0;
			y_speed = -jump_power;
			grappling_active=false;
		}
		if (keyboard_check_released(vk_space))
		{
			if(y_speed < 0) y_speed = 0;	
		}
	}

}