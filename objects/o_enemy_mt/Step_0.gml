
event_inherited();  

if (y > target_y and !isReady) {
    y += vertical_speed;  
} else {
	if(!isReady){
    y = target_y;  
    vertical_speed = 0; 
    isReady = true;  
	hspeed = x_speed;
	}

}


if (isReady) {
        if (abs(o_player.x - x) < range_x && abs(o_player.y - y) < range_y) {
			playerInRange = 1;
			if (canShoot) {
			x_speed_temp = hspeed;
	        hspeed = 0;
	         canShoot = 0;
	         alarm[0] = shootDelay;
			}
			else{
				hspeed = -x_speed_temp;
			}
        }
else{
	   if (playerInRange) {
            x_initial = x;  
            playerInRange = 0; 
        }
	if (hspeed > 0) {
		if (x > x_initial + 62) {
		            c_flip();
		 } else {

		        }
		 } else if (hspeed <= 0) {
		        if (x < x_initial - 62) {
		            c_flip(); 
		    }
		}
	}


    if (hspeed == 0) {
        if (o_player.x > x) image_xscale = 1;
        else if (o_player.x < x) image_xscale = -1;
    }
}
