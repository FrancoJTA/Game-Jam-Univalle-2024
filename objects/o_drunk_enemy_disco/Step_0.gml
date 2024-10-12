event_inherited();

if(abs(o_player.x - x) < range_x and abs(o_player.y - y) < range_y && state=="walk"){
	state="attack";
}

switch(state){
	case "walk":
		sprite_index=s_enemy_disco_mele_mask;
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
				//c_flip();
			}
			else if (collision_rectangle(x+18,y,x+20,y+2,o_terrain,0,1) == noone)
			{
				hspeed=0;
				//c_flip();
			}
		}

		if(hspeed<0){
			if(place_meeting(x-x_check,y,o_terrain)){
				hspeed=0;
				//c_flip();
			}
			else if (collision_rectangle(x-18,y,x-20,y+2,o_terrain,0,1) == noone)
			{
				hspeed=0;
				//c_flip();
			}
		}
	break;
	case "attack":
		if(alarm[0]=-1){
			sprite_index=s_enemy_disco_mele_mask_att;
			x_speed_temp = hspeed;
			hspeed=0;
			if(o_player.x>x){
				image_xscale=1;
			}
			else{
				image_xscale=-1;
			}
			alarm[0]=attack_t;
		}
	break;
}