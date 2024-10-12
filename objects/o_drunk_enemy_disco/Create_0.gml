hpMax=30;
hp=hpMax;
dmg=10;

range_x = 30;
range_y = 64;

attack_t =40;

state="walk";


// -------------- MOVIMIENTO ---------

x_speed=1;
x_check=11;

x_speed_temp = 0;


hspeed=x_speed;

if(irandom(1))hspeed=x_speed;
else {
	hspeed=-x_speed;
	image_xscale=-1;
}
