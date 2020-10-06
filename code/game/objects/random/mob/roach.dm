/obj/random/mob/roaches
	name = "random roach"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/roaches/item_to_spawn()
	return pickweight(list(/mob/living/carbon/superior_animal/roach = 9,
				/mob/living/carbon/superior_animal/roach/tank = 2,
				/mob/living/carbon/superior_animal/roach/toxic = 2,
				/mob/living/carbon/superior_animal/roach/nanite = 2,
				/mob/living/carbon/superior_animal/roach/hunter = 4,
				/mob/living/carbon/superior_animal/roach/support = 4,
				/mob/living/carbon/superior_animal/roach/fuhrer = 0.5))

/obj/random/mob/roaches/low_chance
	name = "low chance random roach"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60

/obj/random/cluster/roaches
	name = "cluster of roaches"
	icon_state = "hostilemob-brown-cluster"
	alpha = 128
	min_amount = 3
	max_amount = 9
	spread_range = 0

/obj/random/cluster/roaches/item_to_spawn()
	return /obj/random/mob/roaches

/obj/random/cluster/roaches/low_chance
	name = "low chance cluster of roaches"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 60

/obj/random/cluster/roaches/lower_chance
	name = "lower chance cluster of roaches"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 80

// For Scrap Beacon
/obj/random/cluster/roaches/beacon/item_to_spawn()
	return /mob/living/carbon/superior_animal/roach/nanite


//Putting this here because fuck making a new file just for 1 spawner
/obj/random/mob/render
	name = "random render"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/render/item_to_spawn()
	return pickweight(list(/mob/living/simple_animal/hostile/render))

/obj/random/mob/render/low_chance
	name = "low chance render"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 90

//nightmares
/obj/random/mob/nightmare
	name = "random nightmare"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/nightmare/item_to_spawn()
	return pickweight(list(/mob/living/simple_animal/hostile/nightmare))

/obj/random/mob/nightmare/low_chance
	name = "low chance nightmare"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 90

//croakers
/obj/random/mob/croaker
	name = "random croaker"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/croaker/item_to_spawn()
	return pickweight(list(/mob/living/simple_animal/hostile/retaliate/croakerlord))

/obj/random/mob/croaker/low_chance
	name = "low chance croaker"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 90

//Putting this here because fuck making a new file just for 1 spawner
/obj/random/mob/voidwolf
	name = "random void wolf"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/voidwolf/item_to_spawn()
	return pickweight(list(/mob/living/simple_animal/hostile/voidwolf = 9,
		/mob/living/simple_animal/hostile/voidwolf/fieldtech = 2,
		/mob/living/simple_animal/hostile/voidwolf/ranged = 4,
		/mob/living/simple_animal/hostile/voidwolf/fieldtech_ranged = 4,
		/mob/living/simple_animal/hostile/voidwolf/captain = 0.5
		))

/obj/random/mob/voidwolf/low_chance
	name = "low chance random void wolf"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60

//xenomorphs
/obj/random/mob/xenomorphs
	name = "random xenomorph"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/xenomorphs/item_to_spawn()
	return pickweight(list(/mob/living/carbon/superior_animal/xenomorph = 9,
				//trash
				/mob/living/carbon/superior_animal/xenomorph/sentinel = 8,
				/mob/living/carbon/superior_animal/xenomorph/hunter = 8,
				/mob/living/carbon/superior_animal/xenomorph/runner = 8,
				/mob/living/carbon/superior_animal/xenomorph/runner/panther = 8,
				/mob/living/carbon/superior_animal/xenomorph/spitter = 8,
				//robust
				/mob/living/carbon/superior_animal/xenomorph/warrior = 6,
				/mob/living/carbon/superior_animal/xenomorph/defender = 6,
				/mob/living/carbon/superior_animal/xenomorph/warrior/shrike = 6,
				/mob/living/carbon/superior_animal/xenomorph/warrior/bull = 6,
				/mob/living/carbon/superior_animal/xenomorph/spitter/boiler = 6,
				//impressive
				/mob/living/carbon/superior_animal/xenomorph/warrior/bull/crusher = 4,
				/mob/living/carbon/superior_animal/xenomorph/warrior/shrike/screecher = 4,
				/mob/living/carbon/superior_animal/xenomorph/runner/ravager = 4,
				/mob/living/carbon/superior_animal/xenomorph/warrior/defiler = 4,
				/mob/living/carbon/superior_animal/xenomorph/warrior/hivelord = 4,
				//mega fauna
				/mob/living/carbon/superior_animal/xenomorph/warrior/praetorian = 1,
				/mob/living/carbon/superior_animal/xenomorph/warrior/shrike/praetorian/queen = 0.1))

/obj/random/mob/xenomorphs/low_chance
	name = "low chance random xenomorph"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60

/obj/random/cluster/xenomorphs
	name = "cluster of xenomorphs"
	icon_state = "hostilemob-brown-cluster"
	alpha = 128
	min_amount = 3
	max_amount = 9
	spread_range = 0

/obj/random/cluster/xenomorphs/item_to_spawn()
	return /obj/random/mob/xenomorphs

/obj/random/cluster/xenomorphs/low_chance
	name = "low chance cluster of xenomorphs"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 60

/obj/random/cluster/xenomorphs/lower_chance
	name = "lower chance cluster of xenomorphs"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 80

//local fauna - surface
/obj/random/mob/tengolo
	name = "random tengolo"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/tengolo/item_to_spawn()
	return pickweight(list(/mob/living/simple_animal/hostile/tengbrute = 2,
		/mob/living/simple_animal/hostile/tengstalker = 1,
		/mob/living/simple_animal/hostile/tengcharge = 2,
		))

/obj/random/mob/tengolo/low_chance
	name = "low chance random tengolo"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60

/obj/random/cluster/tengolo
	name = "cluster of tengolos"
	icon_state = "hostilemob-brown-cluster"
	alpha = 128
	min_amount = 2
	max_amount = 4
	spread_range = 0

/obj/random/cluster/tengolo/item_to_spawn()
	return /obj/random/mob/tengolo

//hakhma beetle
/obj/random/mob/hakhma
	name = "random hakhma"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/hakhma/item_to_spawn()
	return /mob/living/simple_animal/hostile/retaliate/hakhma

/obj/random/mob/hakhma/low_chance
	name = "low chance hakhma"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60

//local fauna - random underground mobs, no clusters for this.
/obj/random/mob/undergroundmob
	name = "random underground mob"
	icon_state = "hostilemob-brown"
	alpha = 128

/obj/random/mob/undergroundmob/item_to_spawn()
	return pickweight(list(
		/mob/living/simple_animal/hostile/samak = 1,
		/mob/living/simple_animal/hostile/bear = 2,
		/mob/living/simple_animal/hostile/helldiver = 1,
		))


/obj/random/mob/undergroundmob/low_chance
	name = "low chance random underground mob"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60
