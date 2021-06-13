// Stacked resources. They use a material datum for a lot of inherited values.
/obj/item/stack/material
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_NORMAL
	w_class = ITEM_SIZE_NORMAL
	icon = 'icons/obj/stack/material.dmi'
	throw_speed = 3
	throw_range = 3
	max_amount = 120

	var/default_type = MATERIAL_STEEL
	var/material/material
	var/apply_colour //temp pending icon rewrite

/obj/item/stack/material/Initialize()
	. = ..()
	pixel_x = rand(0,10)-5
	pixel_y = rand(0,10)-5

	if(!default_type)
		default_type = MATERIAL_STEEL
	material = get_material_by_name("[default_type]")
	if(!material)
		return INITIALIZE_HINT_QDEL

	stacktype = material.stack_type
	if(islist(material.stack_origin_tech))
		origin_tech = material.stack_origin_tech.Copy()

	if(apply_colour)
		color = material.icon_colour

	if(material.conductive)
		flags |= CONDUCT

	matter = material.get_matter()
	update_strings()

/obj/item/stack/material/attack_self(mob/living/user)
	user.craft_menu()

/obj/item/stack/material/get_material()
	return material

/obj/item/stack/material/proc/get_default_type()
	return default_type

/obj/item/stack/material/proc/update_strings()
	// Update from material datum.
	singular_name = material.sheet_singular_name

	if(amount>1)
		name = "[material.use_name] [material.sheet_plural_name]"
		desc = "A stack of [material.use_name] [material.sheet_plural_name]."
		gender = PLURAL
	else
		name = "[material.use_name] [material.sheet_singular_name]"
		desc = "A [material.sheet_singular_name] of [material.use_name]."
		gender = NEUTER

/obj/item/stack/material/use(var/used)
	. = ..()
	update_strings()
	return

/obj/item/stack/material/transfer_to(obj/item/stack/S, var/tamount=null, var/type_verified)
	var/obj/item/stack/material/M = S
	if(!istype(M) || material.name != M.material.name)
		return 0
	var/transfer = ..(S,tamount,1)
	if(src) update_strings()
	if(M) M.update_strings()
	return transfer

/obj/item/stack/material/attack_self(var/mob/user)
	if(!material.build_windows(user, src))
		..()

/obj/item/stack/material/attackby(var/obj/item/W, var/mob/user)
	if(istype(W,/obj/item/stack/cable_coil))
		material.build_wired_product(user, W, src)
		return
	else if(istype(W, /obj/item/stack/rods))
		material.build_rod_product(user, W, src)
		return
	return ..()

/obj/item/stack/material/add(var/extra)
	..()
	update_strings()


/obj/item/stack/material/iron
	name = "iron"
	icon_state = "sheet-iron"
	default_type = MATERIAL_IRON
	price_tag = 1

/obj/item/stack/material/iron/random
	rand_min = 3
	rand_max = 8

/obj/item/stack/material/sandstone
	name = "sandstone brick"
	icon_state = "sheet-sandstone"
	default_type = MATERIAL_SANDSTONE
	price_tag = 1

/obj/item/stack/material/marble
	name = "marble brick"
	icon_state = "sheet-marble"
	default_type = MATERIAL_MARBLE

/obj/item/stack/material/diamond
	name = "diamond"
	icon_state = "sheet-diamond"
	default_type = MATERIAL_DIAMOND
	price_tag = 25

/obj/item/stack/material/durasteel
	name = "durasteel"
	icon_state = "sheet-durasteel"
	default_type = MATERIAL_DURASTEEL
	price_tag = 1000

/obj/item/stack/material/diamond/random
	rand_min = 1
	rand_max = 5

/obj/item/stack/material/diamond/tenstack
	rand_min = 10
	rand_max = 12

/obj/item/stack/material/uranium
	name = MATERIAL_URANIUM
	icon_state = "sheet-uranium"
	default_type = MATERIAL_URANIUM
	price_tag = 10

/obj/item/stack/material/uranium/random
	rand_min = 2
	rand_max = 5

/obj/item/stack/material/plasma
	name = "solid plasma"
	icon_state = "sheet-plasma"
	default_type = MATERIAL_PLASMA
	price_tag = 8

/obj/item/stack/material/plasma/random
	rand_min = 3
	rand_max = 5

/obj/item/stack/material/plastic
	name = "plastic"
	icon_state = "sheet-plastic"
	default_type = MATERIAL_PLASTIC
	price_tag = 2
	novariants = FALSE

/obj/item/stack/material/plastic/random
	rand_min = 3
	rand_max = 10

/obj/item/stack/material/gold
	name = "gold"
	icon_state = "sheet-gold"
	default_type = MATERIAL_GOLD
	price_tag = 10

/obj/item/stack/material/gold/random
	rand_min = 2
	rand_max = 6

/obj/item/stack/material/silver
	name = MATERIAL_SILVER
	icon_state = "sheet-silver"
	default_type = MATERIAL_SILVER
	price_tag = 5

/obj/item/stack/material/silver/random
	rand_min = 3
	rand_max = 8

//Valuable resource, cargo can sell it.
/obj/item/stack/material/platinum
	name = "platinum"
	icon_state = "sheet-adamantine"
	default_type = MATERIAL_PLATINUM
	price_tag = 20

/obj/item/stack/material/platinum/random
	rand_min = 1
	rand_max = 6

//Extremely valuable to Research.
/obj/item/stack/material/mhydrogen
	name = "metallic hydrogen"
	icon_state = "sheet-hydrogen"
	default_type = MATERIAL_MHYDROGEN
	price_tag = 10
	novariants = FALSE

//Fuel for MRSPACMAN generator.
/obj/item/stack/material/tritium
	name = "tritium"
	icon_state = "sheet-silver"
	default_type = MATERIAL_TRITIUM
	apply_colour = 1
	price_tag = 10

/obj/item/stack/material/osmium
	name = "osmium"
	icon_state = "sheet-silver"
	default_type = MATERIAL_OSMIUM
	apply_colour = 1
	price_tag = 12

/obj/item/stack/material/steel
	name = MATERIAL_STEEL
	icon_state = "sheet-metal"
	default_type = MATERIAL_STEEL
	price_tag = 2
	novariants = FALSE

//A stack which starts with the max amount
/obj/item/stack/material/steel/full
	amount = 120

/obj/item/stack/material/steel/random
	rand_min = 3
	rand_max = 10

/obj/item/stack/material/plasteel
	name = "plasteel"
	icon_state = "sheet-plasteel"
	item_state = "sheet-metal"
	default_type = MATERIAL_PLASTEEL
	price_tag = 8
	novariants = FALSE

/obj/item/stack/material/plasteel/random
	rand_min = 3
	rand_max = 8

/obj/item/stack/material/wood
	name = "wooden plank"
	icon_state = "sheet-wood"
	default_type = MATERIAL_WOOD
	price_tag = 1 //Way to easy to get on mass.

/obj/item/stack/material/wood/random
	rand_min = 3
	rand_max = 10

/obj/item/stack/material/cloth
	name = "cloth"
	icon_state = "sheet-cloth"
	default_type = MATERIAL_CLOTH
	price_tag = 1

/obj/item/stack/material/silk
	name = "silk"
	icon_state = "sheet_silk_bundle"
	default_type = MATERIAL_SILK //We dont work as cloth
	price_tag = 10

/obj/item/stack/material/cardboard
	name = "cardboard"
	icon_state = "sheet-card"
	default_type = MATERIAL_CARDBOARD
	price_tag = 3

/obj/item/stack/material/cardboard/random
	rand_min = 5
	rand_max = 10

/obj/item/stack/material/leather
	name = "leather"
	desc = "The by-product of skinning local wildlife."
	icon_state = "sheet-leather"
	default_type = MATERIAL_LEATHER
	price_tag = 10

/obj/item/stack/material/bone
	name = "bones"
	desc = "A collection of random bones and bits."
	icon_state = "sheet_bones"
	default_type = MATERIAL_BONE
	price_tag = 10

/obj/item/stack/material/glass
	name = MATERIAL_GLASS
	icon_state = "sheet-glass"
	default_type = MATERIAL_GLASS
	price_tag = 2

/obj/item/stack/material/glass/random
	rand_min = 3
	rand_max = 15

/obj/item/stack/material/glass/reinforced
	name = "reinforced glass"
	icon_state = "sheet-rglass"
	default_type = MATERIAL_RGLASS

/obj/item/stack/material/glass/plasmaglass
	name = "borosilicate glass"
	desc = "This sheet is special platinum-glass alloy designed to withstand large temperatures"
	singular_name = "borosilicate glass sheet"
	icon_state = "sheet-plasmaglass"
	default_type = MATERIAL_PLASMAGLASS
	price_tag = 6

/obj/item/stack/material/glass/plasmaglass/random
	rand_min = 3
	rand_max = 8

/obj/item/stack/material/glass/plasmarglass
	name = "reinforced borosilicate glass"
	desc = "This sheet is special platinum-glass alloy designed to withstand large temperatures. It is reinforced with few rods."
	singular_name = "reinforced borosilicate glass sheet"
	icon_state = "sheet-plasmarglass"
	default_type = MATERIAL_RPLASMAGLASS
	price_tag = 12

/obj/item/stack/material/biomatter
	name = "biomatter"
	desc = "An another by-product of mob grinding. Feels soft and... Strange."
	singular_name = "biomatter sheet"
	icon_state = "sheet-biomatter"
	default_type = MATERIAL_BIOMATTER
	price_tag = 1 //to keep biomatter in the player economy as the church and science use it.
	var/biomatter_in_sheet = 1

/obj/item/stack/material/biomatter/random
	rand_min = 5
	rand_max = 8

/obj/item/stack/material/biomatter/full
	amount = 120

/obj/item/stack/material/compressed_matter
	name = "compressed matter"
	desc = "Useful matter that has been compressed and squeezed into cartridges."
	singular_name = "compressed matter cartridge"
	icon = 'icons/obj/ammo.dmi'
	icon_state = "rcd"
	item_state = "rcdammo"
	default_type = MATERIAL_COMPRESSED_MATTER

/obj/item/stack/material/papyrus //Used as a component in black powder cartridge crafting.
	name = "papyrus bundles"
	desc = "A parcel of ten sheets of papyrus, bound with leather cord."
	singular_name = "bundle of papyrus"
	icon_state = "sheet-papyrus"
	item_state = "paper"
	default_type = MATERIAL_BIOMATTER
	var/biomatter_in_sheet = 10 // this is because each sheet of papyrus paper contains 1, and a bundle "contains" 10 sheets of papyrus paper.
	price_tag = 1 //Not that anyone will buy this, of course, but the bundles are worth 10 biomatter each.

/obj/item/stack/material/papyrus/attackby(var/obj/item/W, var/mob/user)
	if(W.tool_qualities & QUALITY_CUTTING)
		to_chat(user, SPAN_NOTICE("You cut the leather cord and unbundle the sheets of papyrus."))
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		new /obj/item/weapon/paper/papyrus(src)
		return
	return ..()
