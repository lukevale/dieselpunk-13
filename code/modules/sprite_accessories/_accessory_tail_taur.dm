/*
////////////////////////////
/  =--------------------=  /
/  == Taur Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

// Taur sprites are now a subtype of tail since they are mutually exclusive anyway.

/datum/sprite_accessory/tail/taur
	name = "Hide Taur Body"
	icon = 'icons/mob/sprite_accessory/taurs.dmi'
	colored_layers = 1 // Yes color, using tail color
	blend = ICON_MULTIPLY  // The sprites for taurs are designed for ICON_MULTIPLY

	var/icon/suit_sprites = null //File for suit sprites, if any.

	var/can_ride = 1			//whether we're real rideable taur or just in that category

	//Could do nested lists but it started becoming a nightmare. It'd be more fun for lookups of a_intent and m_intent, but then subtypes need to
	//duplicate all the messages, and it starts getting awkward. These are singletons, anyway!

/datum/sprite_accessory/tail/taur/goat
	name = "Goat Legs"
	icon_state = "satyr"
	blend = ICON_MULTIPLY
	colored_layers = 1

/datum/sprite_accessory/tail/taur/wolf
	name = "Wolf (Taur)"
	icon_state = "wolf_s"

/datum/sprite_accessory/tail/taur/fatwolf
	name = "Fat Wolf (Taur)"
	icon_state = "fatwolf_s"

/datum/sprite_accessory/tail/taur/wolf/wolf_2c
	name = "Wolf 3-color (Taur)"
	icon_state = "wolf_s"
	colored_layers = 3


/datum/sprite_accessory/tail/taur/wolf/fatwolf_2c
	name = "Fat Wolf 3-color (Taur)"
	icon_state = "fatwolf_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/wolf/synthwolf
	name = "SynthWolf dual-color (Taur)"
	icon_state = "synthwolf_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/ch/wolf/fatsynthwolf
	name = "Fat SynthWolf dual-color (Taur)"
	icon_state = "fatsynthwolf_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/skunk
	name = "Skunk (Taur)"
	icon_state = "skunk_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/naga
	name = "Naga (Taur)"
	icon_state = "naga_s"

/datum/sprite_accessory/tail/taur/naga/naga_2c
	name = "Naga dual-color (Taur)"
	icon_state = "naga_s"
	colored_layers = 2
	extra_overlay = "naga_markings"

/datum/sprite_accessory/tail/taur/horse
	name = "Horse (Taur)"
	icon_state = "horse_s"

/datum/sprite_accessory/tail/taur/horse/synthhorse
	name = "SynthHorse dual-color (Taur)"
	icon_state = "synthhorse_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/cow
	name = "Cow (Taur)"
	icon_state = "cow_s"

/datum/sprite_accessory/tail/taur/deer
	name = "Deer dual-color (Taur)"
	icon_state = "deer_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/lizard
	name = "Lizard (Taur)"
	icon_state = "lizard_s"

/datum/sprite_accessory/tail/taur/lizard/lizard_2c
	name = "Lizard dual-color (Taur)"
	icon_state = "lizard_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/ch/lizard/fat
	name = "Fat Lizard (Taur)"
	icon_state = "fatlizard_s"

/datum/sprite_accessory/tail/taur/ch/lizard/fat_2c
	name = "Fat Lizard (Taur, dual-color)"
	icon_state = "fatlizard_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/lizard/synthlizard
	name = "SynthLizard dual-color (Taur)"
	icon_state = "synthlizard_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/ch/lizard/fatsynthlizard
	name = "Fat SynthLizard dual-color (Taur)"
	icon_state = "fatsynthlizard_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/spider
	name = "Spider (Taur)"
	icon_state = "spider_s"

/datum/sprite_accessory/tail/taur/tents
	name = "Tentacles (Taur)"
	icon_state = "tent_s"
	can_ride = 0

/datum/sprite_accessory/tail/taur/feline
	name = "Feline (Taur)"
	icon_state = "feline_s"

/datum/sprite_accessory/tail/taur/fatfeline
	name = "Fat Feline (Taur)"
	icon_state = "fatfeline_s"

/datum/sprite_accessory/tail/taur/fatfeline_wag
	name = "Fat Feline (Taur) (vwag)"
	icon_state = "fatfeline_s"
	ani_state = "fatfeline_w"

/datum/sprite_accessory/tail/taur/feline/feline_2c
	name = "Feline 3-color (Taur)"
	icon_state = "feline_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/feline/fatfeline_2c
	name = "Fat Feline 3-color (Taur)"
	icon_state = "fatfeline_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/feline/synthfeline
	name = "SynthFeline dual-color (Taur)"
	icon_state = "synthfeline_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/ch/feline/fatsynthfeline
	name = "Fat SynthFeline dual-color (Taur)"
	icon_state = "fatsynthfeline_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/slug
	name = "Slug (Taur)"
	icon_state = "slug_s"

/datum/sprite_accessory/tail/taur/frog
	name = "Frog (Taur)"
	icon_state = "frog_s"

/datum/sprite_accessory/tail/taur/thicktentacles
	name = "Thick Tentacles (Taur)"
	icon_state = "tentacle_s"
	can_ride = 0

/datum/sprite_accessory/tail/taur/drake //Enabling on request, no suit compatibility but then again see 2 above.
	name = "Drake (Taur)"
	icon_state = "drake_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/otie
	name = "Otie (Taur)"
	icon_state = "otie_s"
	colored_layers = 3

/datum/sprite_accessory/tail/taur/alraune/alraune_2c
	name = "Alraune (dual color)"
	icon_state = "alraunecolor_s"
	ani_state = "alraunecolor_closed_s"
	ckeys_allowed = null
	colored_layers = 2

/datum/sprite_accessory/tail/taur/wasp
	name = "Wasp (dual color)"
	icon_state = "wasp_s"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/mermaid
	name = "Mermaid (Taur)"
	icon_state = "mermaid_s"
	can_ride = 0

/datum/sprite_accessory/tail/taur/shadekin_tail
	name = "Shadekin Tail"
	icon_state = "shadekin_s"
	can_ride = 0

/datum/sprite_accessory/tail/taur/shadekin_tail/shadekin_tail_2c
	name = "Shadekin Tail (dual color)"
	colored_layers = 2

/datum/sprite_accessory/tail/taur/shadekin_tail/shadekin_tail_long
	name = "Shadekin Long Tail"
	icon_state = "shadekin_long_s"

/datum/sprite_accessory/tail/taur/pawcow // this grabs suit sprites from the normal cow, the outline is the same
	name = "Cow w/ paws (Taur)"
	icon_state = "pawcow_s"
	colored_layers = 2

// Special snowflake tails/taurhalves

//spoopylizz: Roiz Lizden
/datum/sprite_accessory/tail/taur/roiz_long_lizard // Not ACTUALLY a taur, but it uses 32x64 so it wouldn't fit in tails.dmi, and having it as a tail bugs up the sprite.
	name = "Long Lizard Tail (Roiz Lizden)"
	icon_state = "roiz_tail_s"
	colored_layers = 0

//wickedtemp: Chakat Tempest
/datum/sprite_accessory/tail/taur/feline/tempest
	name = "Feline (wickedtemp) (Taur)"
	icon_state = "tempest_s"

//silencedmp5a5: Serdykov Antoz
/datum/sprite_accessory/tail/taur/wolf/serdy
	name = "CyberSerdy (silencedmp5a5) (Taur)"
	icon_state = "serdy_s"

//liquidfirefly: Ariana Scol
/datum/sprite_accessory/tail/taur/centipede
	name = "Centipede (liquidfirefly) (Taur)"
	icon_state = "ariana_s"
	colored_layers = 0

//natje:
/datum/sprite_accessory/tail/taur/alraune
	name = "Alraune (natje) (Taur)"
	icon_state = "alraune_s"
	ani_state = "alraune_closed_s"
	colored_layers = 0
	can_ride = 0
