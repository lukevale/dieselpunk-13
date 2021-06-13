/obj/item/weapon/storage/belt
	name = "belt"
	desc = "Can hold various things."
	icon = 'icons/inventory/belt/icon.dmi'
	icon_state = "utility"
	item_state = "utility"
	storage_slots = 7
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_NORMAL_STORAGE
	slot_flags = SLOT_BELT
	matter = list(MATERIAL_BIOMATTER = 4, MATERIAL_PLASTIC = 5)
	attack_verb = list("whipped", "lashed", "disciplined")
	price_tag = 15

	var/show_above_suit = 0

/obj/item/weapon/storage/belt/verb/toggle_layer()
	set name = "Switch Belt Layer"
	set category = "Object"

	if(show_above_suit == -1)
		to_chat(usr, SPAN_NOTICE("\The [src] cannot be worn above your suit!"))
		return
	show_above_suit = !show_above_suit
	update_icon()

/obj/item/weapon/storage/update_icon()
	if (ismob(src.loc))
		var/mob/M = src.loc
		M.update_inv_belt()


/obj/item/weapon/storage/belt/utility
	name = "tool belt"
	desc = "Can hold various tools."
	icon_state = "utility"
	item_state = "utility"
	can_hold = list(
		/obj/item/weapon/tool,
		/obj/item/weapon/tool_upgrade,
		/obj/item/device/lightreplacer,
		/obj/item/weapon/rcd,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/device/radio,
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
		/obj/item/weapon/cell/medium,
		/obj/item/weapon/grenade/chem_grenade/cleaner,
		/obj/item/weapon/grenade/chem_grenade/antiweed,
		/obj/item/weapon/grenade/chem_grenade/metalfoam
	)

/obj/item/weapon/storage/belt/utility/full/populate_contents()
	new /obj/item/weapon/tool/screwdriver(src)
	new /obj/item/weapon/tool/wrench(src)
	new /obj/item/weapon/tool/weldingtool(src)
	new /obj/item/weapon/tool/crowbar(src)
	new /obj/item/weapon/tool/wirecutters(src)
	new /obj/item/stack/cable_coil/random(src)

/obj/item/weapon/storage/belt/utility/neotheology
	name = "Absolutism utility belt"
	desc = "Waist-held holy items."
	icon_state = "utility_neotheology"
	can_hold_extra = list(
		/obj/item/weapon/book/ritual/cruciform,
		/obj/item/weapon/implant/core_implant/cruciform,
		/obj/item/weapon/soap,
		/obj/item/weapon/reagent_containers/spray/cleaner,
		/obj/item/weapon/tool/knife/dagger/nt,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/ntcahors,
		/obj/item/weapon/gun/energy/plasma/martyr,
		/obj/item/weapon/gun/energy/ntpistol
	)

/obj/item/weapon/storage/belt/utility/handmade
	name = "handmade tool belt"
	desc = "Can hold various tools, its made from wire. It somehow always ends up the same color no matter what it is made from."
	icon_state = "handmade_utility"
	item_state = "handmande_utility"
	price_tag = 5

/obj/item/weapon/storage/belt/utility/handmade/full/populate_contents()
	new /obj/item/weapon/tool/screwdriver/improvised(src)
	new /obj/item/weapon/tool/wrench/improvised(src)
	new /obj/item/weapon/tool/weldingtool/improvised(src)
	new /obj/item/weapon/tool/crowbar/improvised(src)
	new /obj/item/weapon/tool/wirecutters/improvised(src)
	new /obj/item/stack/cable_coil/random(src)
	new /obj/item/weapon/tool/saw/improvised(src)

/obj/item/weapon/storage/belt/utility/opifex
	name = "opifex black tool webbing"
	desc = "A black webbing made specifically for opifex to prevent any pulling or ruffling of feathers, slightly uncomfortable for anyone else but none can deny its quality. This harness is built specifically for tools, limiting its versatility."
	icon_state = "webbing_black"
	item_state = "webbing_black"
	storage_slots = 12

/obj/item/weapon/storage/belt/utility/opifex/full/populate_contents()
	new /obj/item/weapon/tool/crowbar/pneumatic(src)
	new /obj/item/weapon/tool/hammer(src)
	new /obj/item/weapon/tool/multitool/advanced(src)
	new /obj/item/weapon/tool/saw/circular/advanced(src)
	new /obj/item/weapon/tool/screwdriver/electric(src)
	new /obj/item/stack/cable_coil/random(src)
	new /obj/item/weapon/tool/shovel/power(src)
	new /obj/item/weapon/tool/tape_roll/fiber(src)
	new /obj/item/weapon/tool/weldingtool/advanced(src)
	new /obj/item/weapon/tool/wirecutters/armature(src)
	new /obj/item/weapon/tool/wrench/big_wrench(src)
	new /obj/item/weapon/tool/knife/dagger(src)

/obj/item/weapon/storage/belt/medical/opifex
	name = "opifex black medical webbing"
	desc = "A black webbing made specifically for opifex to prevent any pulling or ruffling of feathers, slightly uncomfortable for anyone else but none can deny its quality. This harness is built specifically for medical supplies, limiting its versatility."
	icon_state = "webbing_black"
	item_state = "webbing_black"
	storage_slots = 12

/obj/item/weapon/storage/belt/medical/opifex/full/populate_contents()
	new /obj/item/device/scanner/health(src)
	new /obj/item/weapon/reagent_containers/syringe/large/hyperzine(src)
	new /obj/item/weapon/reagent_containers/syringe/large/tricordrazine(src)
	new /obj/item/weapon/reagent_containers/syringe/large/inaprovaline(src)
	new /obj/item/weapon/storage/pill_bottle/tramadol(src)
	new /obj/item/weapon/storage/pill_bottle/prosurgeon(src)
	new /obj/item/weapon/storage/pill_bottle/bicaridine(src)
	new /obj/item/weapon/storage/pill_bottle/dermaline(src)
	new /obj/item/weapon/storage/pill_bottle/dexalin_plus(src)
	new /obj/item/weapon/storage/pill_bottle/antitox(src)
	new /obj/item/bodybag/cryobag(src)
	new /obj/item/weapon/extinguisher/mini(src)

/obj/item/weapon/storage/belt/medical
	name = "medical belt"
	desc = "Can hold various medical equipment."
	icon_state = "medicalbelt"
	item_state = "medical"
	can_hold = list(
		/obj/item/device/scanner/health,
		/obj/item/weapon/dnainjector,
		/obj/item/device/radio/headset,
		/obj/item/weapon/reagent_containers/dropper,
		/obj/item/weapon/reagent_containers/glass/beaker,
		/obj/item/weapon/reagent_containers/glass/bottle,
		/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/flame/lighter,
		/obj/item/weapon/cell/small,
		/obj/item/weapon/storage/fancy/cigarettes,
		/obj/item/weapon/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves,
		/obj/item/weapon/reagent_containers/hypospray,
		/obj/item/clothing/glasses,
		/obj/item/weapon/tool/crowbar,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/tape/medical,
		/obj/item/device/flash,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/stack/nanopaste,
		/obj/item/bodybag,
		/obj/item/weapon/tool/bonesetter,
		/obj/item/weapon/tool/scalpel,
		/obj/item/weapon/tool/scalpel/advanced,
		/obj/item/weapon/tool/scalpel/laser,
		/obj/item/weapon/tool/tape_roll/bonegel,
		/obj/item/weapon/tool/cautery,
		/obj/item/weapon/tool/cautery/adv,
		/obj/item/weapon/tool/retractor,
		/obj/item/weapon/tool/retractor/adv,
		/obj/item/weapon/tool/saw/circular,
		/obj/item/weapon/tool/saw/circular/medical,
		/obj/item/weapon/tool/hemostat,
		/obj/item/weapon/tool/hemostat/adv,
		/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/storage/pill_bottle,
		/obj/item/bodybag/cryobag,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses,
		/obj/item/weapon/reagent_containers/blood,
		/obj/item/taperoll/medical,
		/obj/item/weapon/tool/crowbar,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses
	)

/obj/item/weapon/storage/belt/medical/emt
	name = "EMT utility belt"
	desc = "A sturdy black webbing belt with attached pouches."
	icon_state = "emsbelt"
	item_state = "emsbelt"

/obj/item/weapon/storage/belt/security
	name = "tactical belt"
	desc = "Can hold various military and security equipment."
	icon_state = "security"
	item_state = "security"
	can_hold = list(
		/obj/item/weapon/grenade,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/handcuffs,
		/obj/item/weapon/tool/crowbar,
		/obj/item/device/flash,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing,
		/obj/item/ammo_magazine,
		/obj/item/weapon/cell/small,
		/obj/item/weapon/cell/medium,
		/obj/item/weapon/flame/lighter,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/modular_computer/pda,
		/obj/item/device/radio/headset,
		/obj/item/device/hailer,
		/obj/item/device/megaphone,
		/obj/item/weapon/melee,
		/obj/item/weapon/tool/knife,
		/obj/item/weapon/gun/projectile/mk58,
		/obj/item/weapon/gun/projectile/revolver/lemant,
		/obj/item/weapon/gun/energy/gun,
		/obj/item/weapon/gun/projectile/clarissa,
		/obj/item/weapon/gun/projectile/giskard,
		/obj/item/weapon/gun/projectile/olivaw,
		/obj/item/weapon/gun/projectile/revolver/detective,
		/obj/item/weapon/gun/energy/gun/martin,
		/obj/item/taperoll,
		/obj/item/weapon/pen,
		/obj/item/weapon/reagent_containers/food/snacks,
		/obj/item/weapon/reagent_containers/food/drinks
	)

/obj/item/weapon/storage/belt/holding
	name = "belt of holding"
	desc = "The greatest in pants-supporting bluespace technology."
	icon_state = "holdingbelt"
	item_state = "holdingbelt"
	storage_slots = 14
	max_w_class = ITEM_SIZE_BULKY
	max_storage_space = DEFAULT_HUGE_STORAGE * 1.25
	matter = list(MATERIAL_STEEL = 6, MATERIAL_GOLD = 6, MATERIAL_DIAMOND = 2, MATERIAL_URANIUM = 3)
	origin_tech = list(TECH_BLUESPACE = 4)

/obj/item/weapon/storage/belt/holding/New()
	..()
	item_flags |= BLUESPACE
	bluespace_entropy(4, get_turf(src))

/obj/item/weapon/storage/belt/holding/attackby(obj/item/weapon/W as obj, mob/user as mob)
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

/obj/item/weapon/storage/belt/security/tactical
	name = "professional tactical belt"
	desc = "Can hold various military and security equipment, more so than a standard belt or web harness."
	icon_state = "tactical"
	storage_slots = 12

/obj/item/weapon/storage/belt/security/tactical/opifex
	name = "opifex tactical belt"
	desc = "A black tactical belt made specifically for opifex to prevent any pulling or ruffling of feathers, slightly uncomfortable for anyone else but none can deny its quality. This harness is built specifically for combat, limiting its versatility."

/obj/item/weapon/storage/belt/security/tactical/opifex/full/populate_contents()
	new /obj/item/weapon/reagent_containers/spray/pepper(src)
	new /obj/item/weapon/tool/crowbar(src)
	new /obj/item/device/flash(src)
	new /obj/item/device/lighting/toggleable/flashlight/heavy(src)
	new /obj/item/weapon/gun/energy/gun(src)
	new /obj/item/weapon/cell/medium/high(src)
	new /obj/item/weapon/cell/medium/high(src)
	new /obj/item/weapon/tool/knife/dagger/assassin(src)
	new /obj/item/weapon/grenade/spawnergrenade/manhacks/opifex(src)
	new /obj/item/weapon/grenade/spawnergrenade/manhacks/opifex(src)
	new /obj/item/weapon/grenade/smokebomb(src)
	new /obj/item/weapon/grenade/chem_grenade/teargas(src)

/obj/item/weapon/storage/belt/security/neotheology
	name = "tactical absolutism belt"
	desc = "Can hold various military and security equipment for the awakened crusader or skilled divisor. Deus Vult."
	icon_state = "tactical_neotheology"
	can_hold_extra = list(
		/obj/item/weapon/book/ritual/cruciform,
		/obj/item/weapon/implant/core_implant/cruciform,
		/obj/item/weapon/tool/knife/neotritual,
		/obj/item/weapon/gun/energy/crossbow,
		/obj/item/weapon/gun/energy/taser, //specially fitted to hold the counselor
		/obj/item/weapon/tool/knife/dagger/nt,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/ntcahors,
		/obj/item/weapon/gun/energy/plasma/martyr,
		/obj/item/weapon/gun/energy/ntpistol
	)

/obj/item/weapon/storage/belt/champion
	name = "championship belt"
	desc = "Proves to the world that you are the strongest!"
	icon_state = "championbelt"
	item_state = "champion"
	storage_slots = 1
	can_hold = list(
		/obj/item/clothing/mask/costume/job/luchador
		)
	price_tag = 50

/obj/item/weapon/storage/belt/church
	name = "absolutism belt"
	desc = "Waist-held holy items."
	icon_state = "ntbelt"

/obj/item/weapon/storage/belt/webbing
	name = "web harness"
	desc = "Everything you need at hand, at belt."
	icon_state = "webbing"
	item_state = "webbing"
	storage_slots = 9

/obj/item/weapon/storage/belt/webbing/green
	name = "green web harness"
	desc = "Everything you need at hand, at belt."
	icon_state = "webbing_green"
	item_state = "webbing_green"

/obj/item/weapon/storage/belt/webbing/black
	name = "black web harness"
	desc = "Everything you need at hand, at belt."
	icon_state = "webbing_black"
	item_state = "webbing_black"

/obj/item/weapon/storage/belt/webbing/ih
	name = "security web harness"
	desc = "Everything you need at hand, at belt."
	icon_state = "webbing_ih"
	item_state = "webbing_ih"

/obj/item/weapon/storage/belt/quiver
	name = "quiver"
	storage_slots = 6
	can_hold = list(
		/obj/item/stack/arrows
		)
