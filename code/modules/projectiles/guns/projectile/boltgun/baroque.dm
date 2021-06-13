/obj/item/weapon/gun/projectile/boltgun/baroque
	name = "\"Caliver\" breech-loading rifle"
	desc = "Laminated with ivory and fitted with a sophisticated falling block action, a cured leather wrapping around the grip, and a decorative percussion hammer, it is an anachronistic black powder weapon designed by Hunters of the Lodge with a resemblance to ancient muskets. It takes .580 caliber paper cartridges, and the scrimshawed engravings add no tactical advantage whatsoever."
	icon = 'icons/obj/guns/projectile/baroque.dmi'
	icon_state = "baroque"
	item_state = "baroque"
	slot_flags = SLOT_BACK
	force = WEAPON_FORCE_ROBUST
	caliber = CAL_BPRIFLE
	load_method = SINGLE_CASING
	max_shells = 1
	price_tag = 5000
	recoil_buildup = 25
	damage_multiplier = 1
	penetration_multiplier  = 1
	matter = list(MATERIAL_STEEL = 25, MATERIAL_WOOD = 10, MATERIAL_BONE = 5)
	saw_off = FALSE
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_SCOPE)
	twohanded = TRUE
	one_hand_penalty = 30
	handle_casings = EJECT_CASINGS
	ammo_type = null
	mag_well = MAG_WELL_GENERIC
	var/breech_training = TRUE //This is for a future perk for single-action and break-action guns.

/obj/item/weapon/gun/projectile/boltgun/baroque/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (item_suffix)
		itemstring += "[item_suffix]"

	if (bolt_open)
		iconstring += "_open"
	else
		iconstring += "_closed"

	icon_state = iconstring
	set_item_state(itemstring)
	sleep(1.6)
	update_hammer()

/obj/item/weapon/gun/projectile/boltgun/baroque/proc/update_hammer()
	..()

	if (!bolt_open && (loaded.len <1))
		icon_state = "baroque-empty"
	return

/obj/item/weapon/gun/projectile/boltgun/baroque/bolt_act(mob/living/user)
	playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltback.ogg', 75, 1)
	bolt_open = !bolt_open
	if(bolt_open)
		if(breech_training && user.stats.getPerk(PERK_SINGLE_ACTION) && wielded)
			unwield(user)
			user.swap_hand()
			to_chat(user, SPAN_NOTICE("You work the breech open, quickly holding the [src] in one hand and switching to your offhand."))
		else
			to_chat(user, SPAN_NOTICE("You work the breech open."))
	else
		if(breech_training && user.stats.getPerk(PERK_SINGLE_ACTION) && !wielded)
			to_chat(user, SPAN_NOTICE("You work the breech closed and quickly hold the [src] in both hands."))
			wield(user)
		else
			to_chat(user, SPAN_NOTICE("You work the breech closed."))
		playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltforward.ogg', 75, 1)
		bolt_open = 0
	if(user)
		add_fingerprint(user)
	update_icon()
