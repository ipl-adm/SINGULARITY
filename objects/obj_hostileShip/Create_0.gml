/// @description Set up missile

maxSpeed = 0.9;
maxFlySpeed = 10;

targetX = irandom_range(400, room_width - 400);
targetY = irandom_range(400, room_height - 400);

notSlowed = 1;

// set up particle system
missileExhaustPart = part_system_create();
missileExhaustPartEmit = part_emitter_create(missileExhaustPart);
part_emitter_region(missileExhaustPart, missileExhaustPartEmit, x + lengthdir_x(6, image_angle), x + lengthdir_x(12, image_angle), y + lengthdir_y(6, image_angle), y + lengthdir_y(12, image_angle), ps_shape_rectangle, ps_distr_invgaussian);
part_emitter_stream(missileExhaustPart, missileExhaustPartEmit, global.part_ship_exhaust, 2);

color = make_color_hsv(irandom(255), 180, 255);

goldCollected = 0;

savedSpeed = 0;