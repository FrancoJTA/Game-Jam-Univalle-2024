function c_disco(){
	if(keyboard_check_pressed(ord("E"))){
		if(canShoot){
			if(right){
				instance_create_layer(x+weapon_modx,y+weapon_mody,"att",o_cigarro);
				obj1=instance_create_layer(x-weapon_modx,y+weapon_mody,"att",o_humo);
				obj1.direction=180;
				obj1.image_angle = obj1.direction;
				canShoot=0;
				alarm[0]=reload_speed;
			}
			else{
				obj=instance_create_layer(x-weapon_modx,y+weapon_mody,"att",o_cigarro);
				obj.direction=180;
				obj.image_angle = obj.direction;
				
				instance_create_layer(x-weapon_modx,y+weapon_mody,"att",o_humo);
				canShoot=0;
				alarm[0]=reload_speed;
			}
		}
	}
}