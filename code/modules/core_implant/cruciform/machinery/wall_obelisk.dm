/obj/machinery/power/wall_obelisk
	name = "Absolutism Protection"
	desc = "The wall mounted version of the obelisk, unlike the larger version, it can remain active even without an active cruciform nearby. \
	Despite its extended function, it requires biomatter loaded into it periodically. \
	One of the few designs created for the church by the Greyson AI under control by the Soteria, much to Soteria's annoyance."
	icon = 'icons/obj/neotheology_machinery.dmi'
	icon_state = "nt_wall_obelisk"

	density = FALSE
	anchored = TRUE
	layer = 2.8

	use_power = IDLE_POWER_USE
	idle_power_usage = 30
	active_power_usage = 300

	var/active = TRUE //Were always active

	var/area_radius = 7
	var/damage = 20
	var/max_targets = 3

	var/biomatter_ammo = 10 //We attack 10 times before running out on map spawn
	var/biomatter_use_per_shot = 1 //Modular way of making it so admins can tweak this mid round

/obj/machinery/power/wall_obelisk/New()
	..()

/obj/machinery/power/wall_obelisk/attack_hand(mob/user)
	return

/obj/machinery/power/wall_obelisk/examine(mob/user)
	..()
	to_chat(user, "<span class='info'>Level of stored biomatter: [biomatter_ammo]</span>")

/obj/machinery/power/wall_obelisk/attackby(obj/item/I, mob/user as mob)
	if (istype(I, /obj/item/stack/material/biomatter))
		var/obj/item/stack/material/biomatter/B = I
		if (B.amount)
			var/sheets_amount_to_transphere = input(user, "How many sheets you want to load?", "Biomatter melting", 1) as num
			if (sheets_amount_to_transphere > B.amount ) //No cheating!
				to_chat(user, SPAN_WARNING("You don't have that many [B.name]"))
				return
			if(sheets_amount_to_transphere)
				B.use(sheets_amount_to_transphere)
				biomatter_ammo += sheets_amount_to_transphere
				user.visible_message(
									"[user.name] inserted \the [B.name]'s sheets in \the [name].",
									"You inserted \the [B.name] in  (in amount: [sheets_amount_to_transphere]) \the [name].\
									And after that you see how the counter on \the [name] is incremented by [sheets_amount_to_transphere]."
									)
				ping()
			else
				to_chat(user, SPAN_WARNING("You can't insert [sheets_amount_to_transphere] in [name]"))
			return

/obj/machinery/power/wall_obelisk/Process()
	..()
	if(stat)
		return
	var/list/affected = range(area_radius, src)
	if(!active)
		use_power = IDLE_POWER_USE
		return
	else
		use_power = 2

		var/to_fire = max_targets
		for(var/A in affected)
			if(istype(A, /obj/structure/burrow))
				var/obj/structure/burrow/burrow = A
				if(!burrow.obelisk_around)
					burrow.obelisk_around = any2ref(src)
			else if(istype(A, /mob/living/carbon/superior_animal))
				var/mob/living/carbon/superior_animal/animal = A
				if(animal.stat != DEAD &! animal.colony_friend && biomatter_ammo >= biomatter_use_per_shot) //got roach, spider, xenos, but not colony pets
					animal.take_overall_damage(damage)
					biomatter_ammo -= biomatter_use_per_shot
					if(!--to_fire)
						return
			else if(istype(A, /mob/living/simple_animal/hostile))
				var/mob/living/simple_animal/hostile/animal = A
				if(animal.stat != DEAD &! animal.colony_friend && biomatter_ammo >= biomatter_use_per_shot) //got misc things like tango, voild wolfs but not colony pets
					animal.take_overall_damage(damage)
					biomatter_ammo -= biomatter_use_per_shot
					if(!--to_fire)
						return
			else if(istype(A, /obj/effect/plant))
				var/obj/effect/plant/shroom = A
				if(shroom.seed.type == /datum/seed/mushroom/maintshroom)
					qdel(shroom)
					if(!--to_fire)
						return
