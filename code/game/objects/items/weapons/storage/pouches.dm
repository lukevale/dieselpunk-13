/obj/item/weapon/storage/pouch
	name = "pouch"
	desc = "Can hold various things."
	icon = 'icons/inventory/pockets/icon.dmi'
	icon_state = "pouch"
	item_state = "pouch"

	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_BELT //Pouches can be worn on belt
	storage_slots = 1
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = DEFAULT_SMALL_STORAGE
	matter = list(MATERIAL_BIOMATTER = 12)
	attack_verb = list("pouched")

	var/sliding_behavior = FALSE

/obj/item/weapon/storage/pouch/verb/toggle_slide()
	set name = "Toggle Slide"
	set desc = "Toggle the behavior of last item in [src] \"sliding\" into your hand."
	set category = "Object"

	sliding_behavior = !sliding_behavior
	to_chat(usr, SPAN_NOTICE("Items will now [sliding_behavior ? "" : "not"] slide out of [src]"))

/obj/item/weapon/storage/pouch/attack_hand(mob/living/carbon/human/user)
	if(sliding_behavior && contents.len && (src in user))
		var/obj/item/I = contents[contents.len]
		if(istype(I))
			hide_from(usr)
			var/turf/T = get_turf(user)
			remove_from_storage(I, T)
			usr.put_in_hands(I)
			add_fingerprint(user)
	else
		..()

/obj/item/weapon/storage/pouch/small_generic
	name = "small generic pouch"
	desc = "Can hold nearly anything in it, but only a small amount."
	icon_state = "small_generic"
	item_state = "small_generic"
	storage_slots = null //Uses generic capacity
	max_storage_space = DEFAULT_SMALL_STORAGE * 0.5
	max_w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_BIOMATTER = 5)

/obj/item/weapon/storage/pouch/small_generic/purple
	icon_state = "small_generic_p"
	item_state = "small_generic_p"

/obj/item/weapon/storage/pouch/medium_generic
	name = "medium generic pouch"
	desc = "Can hold nearly anything in it, but only a moderate amount."
	icon_state = "medium_generic"
	item_state = "medium_generic"
	storage_slots = null //Uses generic capacity
	max_storage_space = DEFAULT_SMALL_STORAGE
	max_w_class = ITEM_SIZE_NORMAL

/obj/item/weapon/storage/pouch/medium_generic/opifex
	name = "opifex smuggle pouch"
	desc = "Can hold nearly anything in it, but only a moderate amount. Made by the opifex, for the opifex."
	icon_state = "medium_opifex"
	item_state = "medium_opifex"

/obj/item/weapon/storage/pouch/large_generic
	name = "large generic pouch"
	desc = "A mini satchel. Can hold a fair bit, but it won't fit in your pocket"
	icon_state = "large_generic"
	item_state = "large_generic"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	storage_slots = null //Uses generic capacity
	max_storage_space = DEFAULT_NORMAL_STORAGE
	max_w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_BIOMATTER = 20)
	wont_fit_pocket = TRUE

/obj/item/weapon/storage/pouch/medical_supply
	name = "medical supply pouch"
	desc = "Can hold medical equipment. But only about four pieces of it."
	icon_state = "medical_supply"
	item_state = "medical_supply"

	storage_slots = 4
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/device/scanner/health,
		/obj/item/weapon/dnainjector,
		/obj/item/weapon/reagent_containers/dropper,
		/obj/item/weapon/reagent_containers/glass/beaker,
		/obj/item/weapon/reagent_containers/glass/bottle,
		/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves/latex,
		/obj/item/weapon/reagent_containers/hypospray,
		/obj/item/clothing/glasses/hud/health,
		)

/obj/item/weapon/storage/pouch/engineering_tools
	name = "engineering tools pouch"
	desc = "Can hold small engineering tools. But only about four pieces of them."
	icon_state = "engineering_tool"
	item_state = "engineering_tool"

	storage_slots = 4
	max_w_class = ITEM_SIZE_SMALL

	can_hold = list(
		/obj/item/weapon/tool,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/device/radio/headset,
		/obj/item/stack/cable_coil,
		/obj/item/device/t_scanner,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/engineering,
		/obj/item/device/robotanalyzer,
		/obj/item/weapon/tool/minihoe,
		/obj/item/weapon/tool/hatchet,
		/obj/item/device/scanner/plant,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/weapon/hand_labeler,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses,
		/obj/item/weapon/flame/lighter,
		/obj/item/weapon/cell/small,
		/obj/item/weapon/cell/medium
		)

/obj/item/weapon/storage/pouch/engineering_tools/hunter
	name = "craftsman's pouch"
	desc = "Can hold various tools, devices, and materials for crafting. Far too big to fit in a pocket and it takes up more bag space than any pouch or belt, but it can hold twice as much kit as a tool belt."
	storage_slots = 14
	w_class = ITEM_SIZE_BULKY
	max_w_class = ITEM_SIZE_NORMAL
	cant_hold = list(
		/obj/item/weapon/storage,
		/obj/item/weapon/tool/power_fist,
		/obj/item/weapon/tool/gauntlet,
		/obj/item/weapon/tool/sword/machete,
		/obj/item/weapon/tool/sword,
		/obj/item/weapon/tool/disciplinary_action,
		/obj/item/weapon/tool/chainofcommand,
		)
	can_hold_extra = list(
		/obj/item/stack/material,
		)
	wont_fit_pocket = TRUE

/obj/item/weapon/storage/pouch/engineering_supply
	name = "engineering supply pouch"
	desc = "Can hold engineering equipment. But only about three pieces of it."
	icon_state = "engineering_supply"
	item_state = "engineering_supply"

	storage_slots = 3
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/weapon/cell,
		/obj/item/weapon/circuitboard,
		/obj/item/weapon/tool,
		/obj/item/stack/material,
		/obj/item/weapon/material,
		/obj/item/stack/rods,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/stack/cable_coil,
		/obj/item/device/t_scanner,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/engineering,
		/obj/item/device/robotanalyzer,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/weapon/airlock_electronics,
		/obj/item/weapon/airalarm_electronics,
		/obj/item/weapon/circuitboard/apc
		)

/obj/item/weapon/storage/pouch/janitor_supply
	name = "janitorial supply pouch"
	desc = "Can hold janitorial equipment, but only about four pieces of them."
	icon_state = "janitor_supply"
	item_state = "janitor_supply"

	storage_slots = 4
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/weapon/grenade/chem_grenade/cleaner,
		/obj/item/weapon/grenade/chem_grenade/antiweed,
		/obj/item/weapon/reagent_containers/spray/cleaner,
		/obj/item/device/assembly/mousetrap,
		/obj/item/device/scanner/plant,
		/obj/item/weapon/extinguisher/mini
		)

/obj/item/weapon/storage/pouch/ammo
	name = "ammo pouch"
	desc = "Can hold ammo magazines and bullets, not the boxes though."
	icon_state = "ammo"
	item_state = "ammo"

	storage_slots = 4
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing
		)

/obj/item/weapon/storage/pouch/ammo/hunter
	name = "cartridge pouch"
	desc = "Can hold four handfuls of cartridges, casings, or slagbolts. Best not to mix and match."
	icon_state = "cartridge"
	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_SMALL
	can_hold = list(
		/obj/item/ammo_casing
		)

/obj/item/weapon/storage/pouch/ammo/casing/attack_hand(mob/user)
	if (!sliding_behavior && contents.len)
		var/obj/item/I = contents[contents.len]
		if(!istype(I, /obj/item/ammo_casing))
			return
		var/obj/item/ammo_casing/existing_handful = I
		if((existing_handful.amount > 1))
			existing_handful.amount -= 1
			var/obj/item/ammo_casing/new_casing = new /obj/item/ammo_casing(get_turf(user))
			new_casing.desc = existing_handful.desc
			new_casing.caliber = existing_handful.caliber
			new_casing.projectile_type = existing_handful.projectile_type
			new_casing.icon_state = existing_handful.icon_state
			new_casing.spent_icon = existing_handful.spent_icon
			new_casing.maxamount = existing_handful.maxamount
			if(ispath(new_casing.projectile_type) && existing_handful.BB)
				new_casing.BB = new new_casing.projectile_type(new_casing)
			else
				new_casing.BB = null
			new_casing.update_icon()
			existing_handful.update_icon()
			user.put_in_active_hand(new_casing)
		else
			user.put_in_active_hand(existing_handful)
			return
	else
		return ..()


/obj/item/weapon/storage/pouch/tubular
	name = "tubular pouch"
	desc = "Can hold seven cylindrical and small items, including but not limiting to flares, glowsticks, syringes and even hatton tubes or rockets."
	icon_state = "flare"
	item_state = "flare"

	storage_slots = 7
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/device/lighting/glowstick,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/ammo_casing/rocket,
		/obj/item/ammo_magazine/smg_35,
		/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/reagent_containers/glass/beaker/vial,
		/obj/item/weapon/reagent_containers/hypospray,
		/obj/item/weapon/pen,
		/obj/item/weapon/storage/pill_bottle,
		/obj/item/weapon/hatton_magazine,
		/obj/item/weapon/extinguisher,
		/obj/item/weapon/implanter,
		/obj/item/weapon/grenade/chem_grenade,
		/obj/item/weapon/weldpack/canister,
		/obj/item/weapon/cell/medium,
		/obj/item/weapon/tank/emergency_oxygen,
		/obj/item/weapon/tank/emergency_nitgen
		)

/obj/item/weapon/storage/pouch/tubular/vial
	name = "vial pouch"
	desc = "Can hold about five vials. Rebranding!"

/obj/item/weapon/storage/pouch/tubular/update_icon()
	..()
	cut_overlays()
	if(contents.len)
		add_overlay(image('icons/inventory/pockets/icon.dmi', "flare_[contents.len]"))

/obj/item/weapon/storage/pouch/pistol_holster
	name = "pistol holster"
	desc = "Can hold a handgun in."
	icon_state = "pistol_holster"
	item_state = "pistol_holster"

	storage_slots = 1
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/weapon/gun/projectile/clarissa,
		/obj/item/weapon/gun/projectile/colt,
		/obj/item/weapon/gun/projectile/firefly,
		/obj/item/weapon/gun/projectile/basilisk,
		/obj/item/weapon/gun/projectile/giskard,
		/obj/item/weapon/gun/projectile/gyropistol,
		/obj/item/weapon/gun/projectile/handmade_pistol,
		/obj/item/weapon/gun/projectile/lamia,
		/obj/item/weapon/gun/projectile/mk58,
		/obj/item/weapon/gun/projectile/revolver/lemant,
		/obj/item/weapon/gun/projectile/olivaw,
		/obj/item/weapon/gun/projectile/silenced,
		/obj/item/weapon/gun/energy/gun,
		/obj/item/weapon/gun/energy/chameleon,
		//obj/item/weapon/gun/energy/captain, //too unwieldy, use belt/suit slot or other storage
		/obj/item/weapon/gun/energy/stunrevolver,
		/obj/item/weapon/gun/projectile/revolver,
		/obj/item/weapon/gun/projectile/shotgun/doublebarrel/sawn, //short enough to fit in
		/obj/item/weapon/gun/launcher/syringe,
		/obj/item/weapon/gun/energy/plasma/auretian,
		/obj/item/weapon/gun/energy/centurio
		)

	sliding_behavior = TRUE

/obj/item/weapon/storage/pouch/pistol_holster/update_icon()
	..()
	cut_overlays()
	if(contents.len)
		add_overlay(image('icons/inventory/pockets/icon.dmi', "pistol_layer"))

/obj/item/weapon/storage/pouch/baton_holster
	name = "baton sheath"
	desc = "Can hold a baton, or indeed most shafts."
	icon_state = "baton_holster"
	item_state = "baton_holster"

	storage_slots = 1
	max_w_class = ITEM_SIZE_BULKY

	can_hold = list(
		/obj/item/weapon/melee,
		/obj/item/weapon/tool/crowbar,
		/obj/item/weapon/hatton_magazine,
		/obj/item/weapon/weldpack/canister,
		/obj/item/weapon/cell/medium,
		/obj/item/weapon/tank/emergency_oxygen,
		/obj/item/weapon/tank/emergency_nitgen,
		/obj/item/device/lighting/toggleable/flashlight
		)

	sliding_behavior = TRUE

/obj/item/weapon/storage/pouch/baton_holster/update_icon()
	..()
	cut_overlays()
	if(contents.len)
		add_overlay(image('icons/inventory/pockets/icon.dmi', "baton_layer"))

/obj/item/weapon/storage/pouch/holding
	name = "pouch of holding"
	desc = "If your pockets are not large enough to store all your belongings, you may want to use this high-tech pouch that opens into a localized pocket of bluespace (pun intended)."
	icon_state = "holdingpouch"
	item_state = "holdingpouch"
	storage_slots = 7
	max_w_class = ITEM_SIZE_BULKY
	max_storage_space = DEFAULT_HUGE_STORAGE
	matter = list(MATERIAL_STEEL = 4, MATERIAL_GOLD = 5, MATERIAL_DIAMOND = 2, MATERIAL_URANIUM = 2)
	origin_tech = list(TECH_BLUESPACE = 4)

/obj/item/weapon/storage/pouch/holding/New()
	..()
	item_flags |= BLUESPACE
	bluespace_entropy(3, get_turf(src))

/obj/item/weapon/storage/pouch/holding/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(W.item_flags & BLUESPACE)
		to_chat(user, SPAN_WARNING("The bluespace interfaces of the two devices conflict and malfunction, producing a loud explosion."))
		if (ishuman(user))
			var/mob/living/carbon/human/H = user
			var/held = W.get_equip_slot()
			if (held == slot_l_hand)
				var/obj/item/organ/external/E = H.get_organ(BP_L_ARM)
				E.droplimb(0, DROPLIMB_BLUNT)
			else if (held == slot_r_hand)
				var/obj/item/organ/external/E = H.get_organ(BP_R_ARM)
				E.droplimb(0, DROPLIMB_BLUNT)
		user.drop_item()
		return
	..()
