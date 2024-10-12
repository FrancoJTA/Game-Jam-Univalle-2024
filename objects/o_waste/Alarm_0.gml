if (point_distance(o_player.x, o_player.y, x, y) <= explosion_radius) {
   o_player.hp -= dmg; 
}

for(i = 1; i <= 10; i++){
	part_particles_create(global.part_front, x, y, global.p_hit, 10);
}



instance_destroy();