/*
 *	These absorb the functionality of the plant bag, ore satchel, etc.
 *	They use the use_to_pickup, quick_gather, and quick_empty functions
 *	that were already defined in weapon/storage, but which had been
 *	re-implemented in other classes.
 *
 *	Contains:
 *		Trash Bag
 *		Mining Satchel
 *		Plant Bag
 *		Sheet Snatcher
 *		Cash Bag
 *
 *	-Sayu
 */

//  Generic non-item
/obj/item/weapon/storage/bag
	icon = 'icons/obj/storage.dmi'
	allow_quick_gather = TRUE
	allow_quick_empty = TRUE
	display_contents_with_number = FALSE
	use_to_pickup = TRUE
	slot_flags = SLOT_BELT

// -----------------------------
//          Trash bag
// -----------------------------
/obj/item/weapon/storage/bag/trash
	name = "trash bag"
	desc = "It's the heavy-duty black polymer kind. Time to take out the trash!"
	icon = 'icons/obj/janitor.dmi'
	icon_state = "trashbag0"
	item_state = "trashbag"
	display_contents_with_number = TRUE

	w_class = ITEM_SIZE_BULKY
	max_w_class = ITEM_SIZE_SMALL
	can_hold = list() // any
	cant_hold = list(/obj/item/weapon/disk/nuclear)
	max_storage_space = DEFAULT_BULKY_STORAGE

/obj/item/weapon/storage/bag/trash/update_icon()
	if(contents.len == 0)
		icon_state = "trashbag0"
	else if(contents.len < 12)
		icon_state = "trashbag1"
	else if(contents.len < 21)
		icon_state = "trashbag2"
	else
		icon_state = "trashbag3"

/obj/item/weapon/storage/bag/trash/holding
	name = "trash bag of holding"
	desc = "The latest and greatest in custodial convenience, a trash bag that is capable of holding vast quantities of garbage. Why someone used highly dangerous bluespace for this is a question left unanswered."
	icon_state = "bluetrashbag"
	max_w_class = ITEM_SIZE_BULKY
	max_storage_space = DEFAULT_HUGE_STORAGE * 1.25
	matter = list(MATERIAL_PLASTIC = 10, MATERIAL_GOLD = 5, MATERIAL_DIAMOND = 1, MATERIAL_URANIUM = 1)

/obj/item/weapon/storage/bag/trash/holding/New()
	..()
	item_flags |= BLUESPACE
	bluespace_entropy(10, get_turf(src))

/obj/item/weapon/storage/bag/trash/holding/attackby(obj/item/weapon/W as obj, mob/user as mob)
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

/obj/item/weapon/storage/bag/trash/holding/update_icon()
	return

// -----------------------------
//        Plastic Bag
// -----------------------------

/obj/item/weapon/storage/bag/plastic
	name = "plastic bag"
	desc = "It's a very flimsy, very noisy alternative to a bag."
	icon = 'icons/obj/trash.dmi'
	icon_state = "plasticbag"
	item_state = "plasticbag"

	w_class = ITEM_SIZE_BULKY
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = DEFAULT_BULKY_STORAGE
	can_hold = list() // any
	cant_hold = list(/obj/item/weapon/disk/nuclear)

// -----------------------------
//        Mining Satchel
// -----------------------------

/obj/item/weapon/storage/bag/ore
	name = "mining satchel"
	desc = "This little bugger can be used to store and transport ores."
	icon = 'icons/obj/mining.dmi'
	icon_state = "satchel"
	slot_flags = SLOT_BELT | SLOT_POCKET
	w_class = ITEM_SIZE_NORMAL
	max_storage_space = 100
	max_w_class = ITEM_SIZE_NORMAL
	can_hold = list(/obj/item/weapon/ore)
	var/stored_ore = list()
	var/last_update = 0

/obj/item/weapon/storage/bag/ore/hunter
	name = "foundry satchel"
	desc = "This hand-stitched, treated leather bag can hold lots of stone and ore for the smelter."
	icon = 'icons/obj/hunter_crafts.dmi'
	icon_state = "foundry"
	slot_flags = SLOT_BELT
	max_storage_space = 200
	w_class = ITEM_SIZE_BULKY

/obj/item/weapon/storage/bag/ore/holding
	name = "satchel of holding"
	desc = "A revolution in convenience, this satchel allows for immense ore or produce storage."
	icon_state = "satchel_bspace"
	max_storage_space = DEFAULT_HUGE_STORAGE * 10
	max_w_class = ITEM_SIZE_BULKY
	matter = list(MATERIAL_STEEL = 4, MATERIAL_GOLD = 4, MATERIAL_DIAMOND = 2, MATERIAL_URANIUM = 2)
	origin_tech = list(TECH_BLUESPACE = 4)
	can_hold = list(/obj/item/weapon/ore,
	                /obj/item/weapon/reagent_containers/food/snacks/grown,
	                /obj/item/seeds,
	                /obj/item/weapon/grown,
	                /obj/item/weapon/reagent_containers/food/snacks/egg,
	                /obj/item/weapon/reagent_containers/food/snacks/meat)

/obj/item/weapon/storage/bag/ore/holding/New()
	..()
	item_flags |= BLUESPACE
	bluespace_entropy(4, get_turf(src))

/obj/item/weapon/storage/bag/ore/holding/attackby(obj/item/weapon/W as obj, mob/user as mob)
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

// -----------------------------
//          Produce bag
// -----------------------------

/obj/item/weapon/storage/bag/produce
	name = "produce bag"
	icon = 'icons/obj/hydroponics_machines.dmi'
	icon_state = "plantbag"
	max_storage_space = 100
	max_w_class = ITEM_SIZE_NORMAL
	w_class = ITEM_SIZE_NORMAL
	can_hold = list(/obj/item/weapon/reagent_containers/food/snacks/grown,
		/obj/item/seeds,
		/obj/item/weapon/grown,
		/obj/item/weapon/reagent_containers/food/snacks/egg,
		/obj/item/weapon/reagent_containers/food/snacks/meat)


// -----------------------------
//        Sheet Snatcher
// -----------------------------
// Because it stacks stacks, this doesn't operate normally.
// However, making it a storage/bag allows us to reuse existing code in some places. -Sayu

/obj/item/weapon/storage/bag/sheetsnatcher
	name = "sheet snatcher"
	icon = 'icons/obj/mining.dmi'
	icon_state = "sheetsnatcher"
	desc = "A patented storage system designed for any kind of mineral sheet."

	var/capacity = 300; //the number of sheets it can carry.
	w_class = ITEM_SIZE_NORMAL
	storage_slots = 7
	allow_quick_empty = TRUE // this function is superceded

/obj/item/weapon/storage/bag/sheetsnatcher/can_be_inserted(obj/item/W as obj, stop_messages = 0)
	if(!istype(W,/obj/item/stack/material))
		if(!stop_messages)
			to_chat(usr, "The snatcher does not accept [W].")
		return 0
	var/current = 0
	for(var/obj/item/stack/material/S in contents)
		current += S.amount
	if(capacity == current)//If it's full, you're done
		if(!stop_messages)
			to_chat(usr, SPAN_WARNING("The snatcher is full."))
		return 0
	return 1


// Modified handle_item_insertion.  Would prefer not to, but...
/obj/item/weapon/storage/bag/sheetsnatcher/handle_item_insertion(obj/item/W as obj, prevent_warning = 0)
	var/obj/item/stack/material/S = W
	if(!istype(S)) return 0

	var/amount
	var/inserted = 0
	var/current = 0
	for(var/obj/item/stack/material/S2 in contents)
		current += S2.amount
	if(capacity < current + S.amount)//If the stack will fill it up
		amount = capacity - current
	else
		amount = S.amount

	for(var/obj/item/stack/material/sheet in contents)
		if(S.type == sheet.type) // we are violating the amount limitation because these are not sane objects
			sheet.amount += amount	// they should only be removed through procs in this file, which split them up.
			S.amount -= amount
			inserted = 1
			break

	if(!inserted || !S.amount)
		usr.remove_from_mob(S)
		usr.update_icons() //update our over-lays
		if (usr.client)
			usr.client.screen -= S
		S.dropped(usr)
		if(!S.amount)
			qdel(S)
		else
			S.loc = src

	refresh_all()
	update_icon()
	return 1

// Modified quick_empty verb drops appropriate sized stacks
/obj/item/weapon/storage/bag/sheetsnatcher/quick_empty()
	var/location = get_turf(src)
	for(var/obj/item/stack/material/S in contents)
		while(S.amount)
			var/obj/item/stack/material/N = new S.type(location)
			var/stacksize = min(S.amount,N.max_amount)
			N.amount = stacksize
			S.amount -= stacksize
		if(!S.amount)
			qdel(S) // todo: there's probably something missing here

	refresh_all()
	update_icon()

// Instead of removing
/obj/item/weapon/storage/bag/sheetsnatcher/remove_from_storage(obj/item/W as obj, atom/new_location)
	var/obj/item/stack/material/S = W
	if(!istype(S)) return 0

	//I would prefer to drop a new stack, but the item/attack_hand code
	// that calls this can't recieve a different object than you clicked on.
	//Therefore, make a new stack internally that has the remainder.
	// -Sayu

	if(S.amount > S.max_amount)
		var/obj/item/stack/material/temp = new S.type(src)
		temp.amount = S.amount - S.max_amount
		S.amount = S.max_amount

	return ..(S,new_location)

// -----------------------------
//           Cash Bag
// -----------------------------

/obj/item/weapon/storage/bag/money
	name = "money bag"
	icon = 'icons/obj/storage.dmi'
	icon_state = "moneybag"
	desc = "A bag for carrying lots of cash. It has got a big dollar sign printed on the front."
	storage_slots = 40
	max_storage_space = 100
	max_w_class = ITEM_SIZE_NORMAL
	w_class = ITEM_SIZE_HUGE
	can_hold = list(/obj/item/weapon/coin,
		/obj/item/weapon/spacecash)

/obj/item/weapon/storage/bag/money/Initialize()
	. = ..()
	if(prob(20))
		icon_state = "moneybagalt"

// -----------------------------
//          Chemistry bag
// -----------------------------

/obj/item/weapon/storage/bag/chemistry
	name = "chemistry bag"
	icon = 'icons/obj/storage.dmi'
	icon_state = "chemistry_bag"
	storage_slots = 10
	max_storage_space = 100
	max_w_class = ITEM_SIZE_NORMAL
	w_class = ITEM_SIZE_NORMAL
	display_contents_with_number = FALSE
	can_hold = list(/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/reagent_containers/glass/beaker,
		/obj/item/weapon/reagent_containers/glass/bottle
	)
