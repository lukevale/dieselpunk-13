/obj/item/weapon/gun/projectile/ladon
	name = "\"Ladon\" magnum pistol"
	desc = "A Mk-68 \"Ladon\", the trimmed down decendant of the M6 service pistol family as a second-line pistol for law enforcement produced by Seinemetall Defense GmbH, non-combat personnel, and people with reasonably sized hands.  Uses .40 Auto-Mag. This one appears to have been in SolFed service at some point."
	icon = 'icons/obj/guns/projectile/ladon.dmi'
	icon_state = "dark_ladon"
	item_state = "dark_ladon"
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_PLASTIC = 5)
	price_tag = 600
	fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg'
	can_dual = TRUE
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	damage_multiplier = 1.2
	recoil_buildup = 4
	one_hand_penalty = 7
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	auto_eject = 1
	gun_tags = list(GUN_PROJECTILE, GUN_MAGWELL)

/obj/item/weapon/gun/projectile/ladon/update_icon()
	..()

	if(!ammo_magazine)
		icon_state = initial(icon_state)
	else if(!ammo_magazine.stored_ammo.len)
		icon_state = initial(icon_state) + "_empty"
	else
		icon_state = initial(icon_state) + "_full"

/obj/item/weapon/gun/projectile/ladon/hs
	name = "\"Porton\" magnum pistol"
	desc = "A popular commercial variant of Mk-68 \"Ladon\" produced by \"H&S\". Often found in police and private use alike. Uses .40 Auto-Mag rounds."
	icon_state = "ladon"
	item_state = "ladon"
	damage_multiplier = 1
	recoil_buildup = 3
	one_hand_penalty = 7

/obj/item/weapon/gun/projectile/ladon/sa
	name = "\"Sigia\" magnum pistol"
	desc = "A significant reinforcement of Mk-68 \"Ladon\". Uses .40 Auto-Mag rounds. This one has a Scarborough Arms rollmark on the frame and no other markings."
	icon_state = "ladon_alt"
	item_state = "ladon_alt"
	damage_multiplier = 1.1
	recoil_buildup = 4
	one_hand_penalty = 8