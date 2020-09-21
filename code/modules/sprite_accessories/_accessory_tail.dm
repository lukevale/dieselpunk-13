/*
////////////////////////////
/  =--------------------=  /
/  == Tail Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/
/datum/sprite_accessory/tail
	name = "Hide Tail"
	icon = 'icons/mob/sprite_accessory/tails.dmi'
	colored_layers = 0 //Set to 1 to enable coloration using the tail color.
	extra_overlay // Change the icon name when adding extra layers
	var/show_species_tail = 0 // If false, do not render species' tail.
	var/clothing_can_hide = 1 // If true, clothing with HIDETAIL hides it
	var/desc = "You should not see this..."
	var/ani_state // State when wagging/animated
	var/extra_overlay_w // Wagging state for extra overlay
	var/layers = 0
	var/list/hide_body_parts = list() //Uses organ tag defines. Bodyparts in this list do not have their icons rendered, allowing for more spriter freedom when doing taur/digitigrade stuff.
	var/icon/clip_mask_icon = null //Icon file used for clip mask.
	var/clip_mask_state = null //Icon state to generate clip mask. Clip mask is used to 'clip' off the lower part of clothing such as jumpsuits & full suits.
	var/icon/clip_mask = null //Instantiated clip mask of given icon and state

/datum/sprite_accessory/tail/akulahc
	name = "Akula Tail"
	desc = ""
	icon_state = "sharktail_hc_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/armalishc
	name = "Armalis Tail"
	desc = ""
	icon_state = "armalis"
	colored_layers = 1

/datum/sprite_accessory/tail/aronai
	name = "Aronai Tail"
	desc = ""
	icon_state = "aronai"

/datum/sprite_accessory/tail/avianfantail
	name = "Avian Fantail"
	desc = ""
	icon_state = "fantail"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/wagtail
	name = "Avian Wagtail"
	desc = ""
	icon_state = "wagtail"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/bear
	name = "Bear Tail"
	desc = ""
	icon_state = "bear"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/beethorax
	name = "Bee Thorax"
	desc = ""
	icon_state = "beethorax"

/datum/sprite_accessory/tail/bunny
	name = "Bunny Tail"
	desc = ""
	icon_state = "bunny"
	colored_layers = 1

/datum/sprite_accessory/tail/cow
	name = "Cow Tail"
	desc = ""
	icon_state = "cow"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/crossfox
	name = "Cross Fox Tail"
	desc = ""
	icon_state = "crossfox"

/datum/sprite_accessory/tail/curltail
	name = "Curly Tail"
	desc = ""
	icon_state = "curltail"
	ani_state = "curltail_w"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/cyber
	name = "Cybernetic Tail"
	desc = ""
	icon_state = "cybertail"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/cyberfeline
	name = "Cybernetic Feline Tail"
	desc = ""
	icon_state = "cybertail_feline"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/deertail
	name = "Deer Tail"
	desc = ""
	icon_state = "deertail"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/dockedtail
	name = "Docked Tail"
	desc = ""
	icon_state = "deertail"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/dragon
	name = "Dragon Tail"
	desc = ""
	icon_state = "dragon"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/fennecdown
	name = "Fennec Tail, Downwards"
	desc = ""
	icon_state = "fentail_1"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/fennecup
	name = "Fennec Tail, Upwards"
	desc = ""
	icon_state = "fentail_2"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/fennecsune
	name = "Fennecsune Tails"
	desc = ""
	icon_state = "fennecsune"

/datum/sprite_accessory/tail/fennix
	name = "Fennix Tail"
	desc = ""
	icon_state = "fennix"
	ani_state = "fennix_w"

/datum/sprite_accessory/tail/fluffdragon
	name = "Fluffdragon Tail"
	desc = ""
	icon_state = "fluffdragon"

/datum/sprite_accessory/tail/foxdown
	name = "Fox Tail, Downwards"
	desc = ""
	icon_state = "foxtail_1"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/foxup
	name = "Fox Tail, Upwards"
	desc = ""
	icon_state = "foxtail_2"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/horse
	name = "Horse Tail"
	desc = ""
	icon_state = "horse"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/jaggedtail
	name = "Jagged Tail"
	desc = ""
	icon_state = "jaggedtail"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/kitsune_double
	name = "Kitsune Tails, Double"
	desc = ""
	icon_state = "kitsune_double"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/kitsune_miria
	name = "Kitsune Tails, Miria"
	desc = ""
	icon_state = "kitsune_miria"

/datum/sprite_accessory/tail/kitsune_tritail
	name = "Kitsune Tails, Tritail"
	desc = ""
	icon_state = "kitsune_tri"

/datum/sprite_accessory/tail/kitsune_tamamo
	name = "Kitsune Tails, Pentatail"
	desc = ""
	icon_state = "kitsune_pent"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/kitty
	name = "Kitty Tail, Downwards"
	desc = ""
	icon_state = "kittydown"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/kittyup
	name = "Kitty Tail, Upwards"
	desc = ""
	icon_state = "kittyup"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard
	name = "Lizard Tail"
	desc = ""
	icon_state = "liztail"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard2
	name = "Lizard Tail, Short"
	desc = ""
	icon_state = "liztail_short"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/mouse
	name = "Mouse Tail"
	desc = ""
	icon_state = "mouse"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/monkey
	name = "Monkey Tail"
	desc = ""
	icon_state = "monkey"
	colored_layers = 1

/datum/sprite_accessory/tail/otietail
	name = "Otie Tail"
	desc = ""
	icon_state = "otie"
	ani_state = "otie_w"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/render
	name = "Render Tail"
	desc = ""
	icon_state = "render"

/datum/sprite_accessory/tail/ringtail
	name = "Ringtail"
	desc = ""
	icon_state = "ringtail"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/naramadtaildc
	name = "Naramad Tail"
	desc = ""
	icon_state = "sergal"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/naramadtailhc
	name = "Naramad Tail 2"
	desc = ""
	icon_state = "sergtail_hc_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/seromitailhc
	name = "Seromi Tail"
	desc = ""
	icon_state = "seromitail_hc_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/seromitailfeatheredhc
	name = "Seromi Tail, Feathers"
	desc = ""
	icon_state = "seromitail_feathers_hc_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/shorttail
	name = "Short Tail"
	desc = ""
	icon_state = "straighttail"
	ani_state = "straighttail_w"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/skunktail
	name = "Skunk Tail"
	desc = ""
	icon_state = "skunktail"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/snaketail
	name = "Snake Tail"
	desc = ""
	icon_state = "snaketail"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/spade_color
	name = "Spade Tail"
	desc = ""
	icon_state = "spadetail"
	colored_layers = 1

/datum/sprite_accessory/tail/squirrel
	name = "Squirrel Tail"
	desc = ""
	icon_state = "squirrel"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/stripey
	name = "Stripey Cat Tail"
	desc = ""
	icon_state = "stripeytail"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/tajaranhc
	name = "Sablekyne Tail"
	desc = ""
	icon_state = "tajtail_hc_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/tiger_white
	name = "Tiger Tail"
	desc = ""
	icon_state = "tiger"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/tiger_new
	name = "Tiger Tail, Alternate"
	desc = ""
	icon_state = "tigertail"
	ani_state = "tigertail_w"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/tigress
	name = "Tigress Tail"
	desc = ""
	icon_state = "tigresstail"

/datum/sprite_accessory/tail/vulp_new
	name = "Vulpkanin Tail"
	desc = ""
	icon_state = "vulptail"
	ani_state = "vulptail_w"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulpan_alt
	name = "Vulpkanin Tail 2"
	desc = ""
	icon_state = "vulptail_alt"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulpan
	name = "Vulpkanin Tail 3"
	desc = ""
	icon_state = "vulptail_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/wolf
	name = "Wolf Tail"
	desc = ""
	icon_state = "wolf"
	colored_layers = 2
	blend = ICON_MULTIPLY

/*//For all species tails. Includes haircolored tails.
/datum/sprite_accessory/tail/special
	name = "Blank tail. Do not select."
	icon = 'icons/effects/species_tails_vr.dmi'*/


//Buggo Abdomens!

/datum/sprite_accessory/tail/buggo
	name = "Bug Abdomen"
	desc = ""
	icon_state = "buggo_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobee
	name = "Bug Abdomen, Bee Top"
	desc = ""
	icon_state = "buggo_s"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobeefull
	name = "Bug Abdomen, Bee Full"
	desc = ""
	icon_state = "buggo_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"

/datum/sprite_accessory/tail/buggounder
	name = "Bug Abdomen, Underside"
	desc = ""
	icon_state = "buggo_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"

/datum/sprite_accessory/tail/buggofirefly
	name = "Bug Abdomen, Firefly"
	desc = ""
	icon_state = "buggo_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"

/datum/sprite_accessory/tail/buggofat
	name = "Large Bug Abdomen"
	desc = ""
	icon_state = "buggofat_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggofatbee
	name = "Large Bug Abdomen, Bee Top"
	desc = ""
	icon_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggofatbeefull
	name = "Large Bug Abdomen, Bee Full"
	desc = ""
	icon_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggofatunder
	name = "Large Bug Abdomen, Underside"
	desc = ""
	icon_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofatfirefly
	name = "Large Bug Abdomen, Firefly"
	desc = ""
	icon_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_markings"

/datum/sprite_accessory/tail/buggowag
	name = "Alternate Bug Abdomen"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobeewag
	name = "Alternate Bug Abdomen, Bee Top"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"
	extra_overlay_w = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggobeefullwag
	name = "Alternate Bug Abdomen, Bee Full"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"
	extra_overlay_w = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggounderwag
	name = "Alternate Bug Abdomen, Underside"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"
	extra_overlay_w = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofireflywag
	name = "Alternate Bug Abdomen, Firefly"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"
	extra_overlay_w = "buggofatfirefly_markings"

//Vass buggo variants!

/datum/sprite_accessory/tail/buggovass
	name = "Alternate Bug Abdomen 2"
	desc = ""
	icon_state = "buggo_vass_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbee
	name = "Alternate Bug Abdomen 2, Bee Top"
	desc = ""
	icon_state = "buggo_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbeefull
	name = "Alternate Bug Abdomen 2, Bee Full"
	desc = ""
	icon_state = "buggo_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggobeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassunder
	name = "Alternate Bug Abdomen 2, Underside"
	desc = ""
	icon_state = "buggo_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggounder_vass_markings"

/datum/sprite_accessory/tail/buggovassfirefly
	name = "Alternate Bug Abdomen 2, Firefly"
	desc = ""
	icon_state = "buggo_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofirefly_vass_markings"

/datum/sprite_accessory/tail/buggovassfat
	name = "Alternate Large Bug Abdomen"
	desc = ""
	icon_state = "buggofat_vass_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassfatbee
	name = "Alternate Large Bug Abdomen, Bee Top"
	desc = ""
	icon_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassfatbeefull
	name = "Alternate Large Bug Abdomen, Bee Full"
	desc = ""
	icon_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassfatunder
	name = "Alternate Large Bug Abdomen, Underside"
	desc = ""
	icon_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofatunder_vass_markings"

/datum/sprite_accessory/tail/buggovassfatfirefly
	name = "Alternate Large Bug Abdomen, Firefly"
	desc = ""
	icon_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_vass_markings"

/datum/sprite_accessory/tail/buggovasswag
	name = "Alternate Bug Abdomen 3"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	colored_layers = 1
	blend = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbeewag
	name = "Alternate Bug Abdomen 3, Bee Top"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggobee_vass_markings"
	extra_overlay_w = "buggofatbee_vass_markings"

/datum/sprite_accessory/tail/buggovassbeefullwag
	name = "Alternate Bug Abdomen 3, Bee Full"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggobeefull_vass_markings"
	extra_overlay_w = "buggofatbeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassunderwag
	name = "Alternate Bug Abdomen 3, Underside"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggounder_vass_markings"
	extra_overlay_w = "buggofatunder_vass_markings"

/datum/sprite_accessory/tail/buggovassfireflywag
	name = "Alternate Bug Abdomen 3, Firefly"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	colored_layers = 2
	blend = ICON_MULTIPLY
	extra_overlay = "buggofirefly_vass_markings"
	extra_overlay_w = "buggofatfirefly_vass_markings"


/*

////////////////////////////
//  =--------------------=  /
//  == Taur Definitions ==  /
//  =--------------------=  /
////////////////////////////

/datum/sprite_accessory/tail/taur
	name = "Hide Taur Body"
	icon = 'icons/mob/sprite_accessory/taurs.dmi'
	colored_layers = 1 // Yes color, using tail color
	blend = ICON_MULTIPLY  // The sprites for taurs are designed for ICON_MULTIPLY

	var/icon/suit_sprites = null //File for suit sprites, if any.

	var/can_ride = 1			//whether we're real rideable taur or just in that category

	//Could do nested lists but it started becoming a nightmare. It'd be more fun for lookups of a_intent and m_intent, but then subtypes need to
	//duplicate all the messages, and it starts getting awkward. These are singletons, anyway!
	hide_body_parts	= list(BP_L_LEG, BP_L_FOOT, BP_R_LEG, BP_R_FOOT) //Exclude pelvis just in case.
	clip_mask_icon = 'icons/mob/sprite_accessory/taurs.dmi'
	clip_mask_state = "taur_clip_mask_def" //Used to clip off the lower part of suits & uniforms.



/datum/sprite_accessory/tail/taur/alraune
	name = "Alraune (Taur)"
	icon_state = "alraune_s"
	ani_state = "alraune_closed_s"
	ckeys_allowed = list("natje")
	colored_layers = 0
	can_ride = 0

/datum/sprite_accessory/tail/taur/alraune/alraune_2c
	name = "Alraune Dual Color (Taur)"
	icon_state = "alraunecolor_s"
	ani_state = "alraunecolor_closed_s"
	ckeys_allowed = null
	colored_layers = 2
	extra_overlay_w = "alraunecolor_closed_markings"

/datum/sprite_accessory/tail/taur/centipede
	name = "Centipede (Taur)"
	icon_state = "ariana_s"
	colored_layers = 0

/datum/sprite_accessory/tail/taur/cow
	name = "Cow (Taur)"
	icon_state = "cow_s"
	suit_sprites = 'icons/mob/taursuit/cow.dmi'

/datum/sprite_accessory/tail/taur/wolf/serdy
	name = "CyberWolf (Taur)"
	icon_state = "serdy_s"

/datum/sprite_accessory/tail/taur/deer
	name = "Deer (Taur)"
	icon_state = "deer_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/drake //Enabling on request, no suit compatibility but then again see 2 above.
	name = "Drake (Taur)"
	icon_state = "drake_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/feline
	name = "Feline (Taur)"
	icon_state = "feline_s"

/datum/sprite_accessory/tail/taur/feline/feline_2c
	name = "Feline Dual Color (Taur)"
	icon_state = "feline_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/feline/variant
	name = "Feline Spotted (Taur)"
	icon_state = "tempest_s"

/datum/sprite_accessory/tail/taur/frog
	name = "Frog (Taur)"
	icon_state = "frog_s"

/datum/sprite_accessory/tail/taur/goat
	name = "Goat Legs"
	icon_state = "satyr"
	blend = ICON_MULTIPLY
	colored_layers = 1

/datum/sprite_accessory/tail/taur/horse
	name = "Horse (Taur)"
	icon_state = "horse_s"
	suit_sprites = 'icons/mob/taursuit/horse.dmi'

/datum/sprite_accessory/tail/taur/lizard
	name = "Lizard (Taur)"
	icon_state = "lizard_s"
	suit_sprites = 'icons/mob/taursuit/lizard.dmi'

/datum/sprite_accessory/tail/taur/lizard/lizard_2c
	name = "Lizard Dual Color (Taur)"
	icon_state = "lizard_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/roiz_long_lizard
	name = "Lizard Extra Long Tail "
	icon_state = "roiz_tail_s"
	colored_layers = 0
	ckeys_allowed = list("spoopylizz")

/datum/sprite_accessory/tail/taur/naga
	name = "Naga (Taur)"
	icon_state = "naga_s"
	suit_sprites = 'icons/mob/taursuit/naga.dmi'

/datum/sprite_accessory/tail/taur/naga/naga_2c
	name = "Naga Dual Color (Taur)"
	icon_state = "naga_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/otie
	name = "Otie (Taur)"
	icon_state = "otie_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/slug
	name = "Slug (Taur)"
	icon_state = "slug_s"

/datum/sprite_accessory/tail/taur/spider
	name = "Spider (Taur)"
	icon_state = "spider_s"

/datum/sprite_accessory/tail/taur/synthfeline
	name = "SynthFeline (Taur)"
	icon_state = "synthfeline_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/synthhorse
	name = "SynthHorse (Taur)"
	icon_state = "synthhorse_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/synthlizard
	name = "SynthLizard (Taur)"
	icon_state = "synthlizard_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/synthwolf
	name = "SynthWolf (Taur)"
	icon_state = "synthwolf_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/tents
	name = "Tentacles (Taur)"
	icon_state = "tent_s"
	can_ride = 0

/datum/sprite_accessory/tail/taur/wolf
	name = "Wolf (Taur)"
	icon_state = "wolf_s"
	suit_sprites = 'icons/mob/taursuit/wolf.dmi'

/datum/sprite_accessory/tail/taur/wolf/wolf_2c
	name = "Wolf Dual Color (Taur)"
	icon_state = "wolf_s"
	colored_layers = 2

*/