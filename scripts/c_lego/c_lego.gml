function c_lego(){
if (keyboard_check(ord("Q")) and blocks >= 2) {
		    obj = instance_create_layer(x + weapon_modx, y + weapon_mody, "att", o_shoot_cage);
		    obj.target_enemy = instance_nearest(x, y, o_enemy_body);
			blocks = 0;
			}
			if (keyboard_check(ord("E")) && canShoot) {
		    enemy = instance_nearest(x, y, o_enemy_body);  

		    attack_offset_x = 0;
    
		    if (right == 1) {
		        attack_offset_x = 32; 
		    } else {
		        attack_offset_x = -32; 
		    }


		    part_particles_create(global.part_front, x + attack_offset_x, y - 32, global.p_hit, 1); 


		    if (enemy != noone && distance_to_object(enemy) < 30 && variable_instance_exists(enemy, "hp")) {

		        damage = 5;
		        enemy.hp -= damage;  

		        for (var i = 0; i < 10; i++) {
		            part_particles_create(global.part_front, x + attack_offset_x, y - 32, global.p_hit, 10); 
		        }
		    }
    
		    canShoot = 0; 
		    alarm[0] = reload_speed; 
		}
		if (jump_down && ground) {

	    jump_down = 0;  


	    for ( i = 0; i < 20; i++) {
	         angle = irandom_range(0, 360); 
	         dist = irandom_range(0, 64); 
	         px = x + lengthdir_x(dist, angle);
	         py = y + lengthdir_y(dist, angle);
	        part_particles_create(global.part_front, px, py, global.p_hit, 10);  // Crear partículas
	    }

	     with (o_enemy_body) {
	        if (distance_to_object(other) <= 64) {
	            hp -= 10;  
		           }
		    }
		}
}