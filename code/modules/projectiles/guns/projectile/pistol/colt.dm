/obj/item/weapon/gun/projectile/colt
	name = "\"Colt\" pistol"
	desc = "A cheap knock-off of an M1911 produced by Scarborough Arms. Uses .35 rounds."
	icon = 'icons/obj/guns/projectile/colt.dmi'
	icon_state = "colt"
	item_state = "colt"
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 5)
	price_tag = 900
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	can_dual = 1
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	damage_multiplier = 1.2
	recoil_buildup = 17
	gun_tags = list(GUN_PROJECTILE, GUN_CALIBRE_35)
	one_hand_penalty = 20

/obj/item/weapon/gun/projectile/colt/IH_colt
	name = "FS HG .45 \"Bronco\""
	desc = "A rugged derivative of the venerable M1911, modernized to the M1911A3 standard. Uses .45 rounds."
	icon_state = "IH_colt"
	item_state = "IH_colt"
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_PLASTIC = 5)
	recoil_buildup = 12

/obj/item/weapon/gun/projectile/colt/ten
	name = "\"Delta Elite\" magnum pistol"
	desc = "A classy civilian high-powered automatic based on the M1911 series handguns, with significant reinforcements produded by Holland & Sullivan Arms. Uses .40 Auto-Mag."
	icon_state = "delta"
	item_state = "colt"
	w_class = ITEM_SIZE_NORMAL
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_PLASTEEL = 18, MATERIAL_PLASTIC = 8)
	price_tag = 2000
	fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg'
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	recoil_buildup = 15
	damage_multiplier = 1.1
	gun_tags = list(GUN_PROJECTILE)

/obj/item/weapon/gun/projectile/colt/ten/dark
	name = "\"Stallion\" magnum pistol"
	desc = "A rugged derivative of the venerable M1911, modernized to the M1911A5 standard and produced by SolFed armories across the galaxy, this one bears  defaced serial numbers and the insignia of the Blackshield. Uses .40 Auto-Mag."
	icon_state = "dark_delta"
	item_state = "colt"
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'

/obj/item/weapon/gun/projectile/colt/update_icon()
	..()

	var/iconstring = initial(icon_state)

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring

/obj/item/weapon/gun/projectile/colt/Initialize()
	. = ..()
	update_icon()
