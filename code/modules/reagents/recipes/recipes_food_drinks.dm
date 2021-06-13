/datum/chemical_reaction/glycerol
	result = "glycerol"
	required_reagents = list("cornoil" = 3, "sacid" = 1)
	result_amount = 1

/datum/chemical_reaction/sodiumchloride
	result = "sodiumchloride"
	required_reagents = list("hclacid" = 1, "sodium" = 1, "water" = 1) //Hydrocloric Acid with Water so that it makes Chlorine, makes more sense.
	result_amount = 3

/datum/chemical_reaction/eznutrient
	result = "eznutrient"
	required_reagents = list("ammonia" = 1, "carbon" = 3)
	result_amount = 4

/datum/chemical_reaction/left4zed
	result = "left4zed"
	required_reagents = list("nutriment" = 1, "radium" = 3)
	result_amount = 4

/datum/chemical_reaction/robustharvest
	result = "robustharvest"
	required_reagents = list("eznutrient" = 1, "sugar" = 3, "carbon" = 3)
	result_amount = 7

/datum/chemical_reaction/virus_food
	result = "virusfood"
	required_reagents = list("water" = 1, "milk" = 1)
	result_amount = 5

/* Food */

/datum/chemical_reaction/tofu
	result = null
	required_reagents = list("soymilk" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/tofu/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/tofu(location)

/datum/chemical_reaction/chocolate_bar
	result = null
	required_reagents = list("soymilk" = 2, "coco" = 2, "sugar" = 2)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/chocolate_bar/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/chocolatebar(location)

/datum/chemical_reaction/chocolate_bar2
	result = null
	required_reagents = list("milk" = 2, "coco" = 2, "sugar" = 2)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/chocolate_bar2/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/chocolatebar(location)

/datum/chemical_reaction/honey_icecream
	result = null
	required_reagents = list("milk" = 10, "sugar" = 5, "ice" = 15, "cream" = 10, "honey" = 5)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/honey_icecream/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/honey_icecream(location)

/datum/chemical_reaction/hot_coco
	result = "hot_coco"
	required_reagents = list("water" = 5, "coco" = 1)
	result_amount = 5

/datum/chemical_reaction/soysauce
	result = "soysauce"
	required_reagents = list("soymilk" = 4, "sacid" = 1)
	result_amount = 5

/datum/chemical_reaction/ketchup
	result = "ketchup"
	required_reagents = list("tomatojuice" = 2, "water" = 1, "sugar" = 1)
	result_amount = 4

/datum/chemical_reaction/cheesewheel
	result = null
	required_reagents = list("milk" = 40)
	catalysts = list("enzyme" = 5)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/cheesewheel/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/sliceable/cheesewheel(location)

/datum/chemical_reaction/meatball
	result = null
	required_reagents = list("protein" = 3, "flour" = 5)
	result_amount = 3
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/meatball/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/meatball(location)

/datum/chemical_reaction/dough
	result = null
	required_reagents = list("egg" = 3, "flour" = 10)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/dough/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/dough(location)

/datum/chemical_reaction/syntiflesh
	result = null
	required_reagents = list("blood" = 5, "clonexadone" = 1)
	result_amount = 1
	blacklist_containers = list(/mob, /obj/machinery/microwave)

/datum/chemical_reaction/syntiflesh/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i = 1, i <= created_volume, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/meat/syntiflesh(location)

/datum/chemical_reaction/hot_ramen
	result = "hot_ramen"
	required_reagents = list("water" = 1, "dry_ramen" = 3)
	result_amount = 3

/datum/chemical_reaction/hell_ramen
	result = "hell_ramen"
	required_reagents = list("capsaicin" = 1, "hot_ramen" = 6)
	result_amount = 6

/* Aurora's Coffee */

/datum/chemical_reaction/soy_latte
	result = "soy_latte"
	required_reagents = list("coffee" = 1, "soymilk" = 1)
	result_amount = 2

/datum/chemical_reaction/cafe_latte
	result = "cafe_latte"
	required_reagents = list("coffee" = 1, "milk" = 1)
	result_amount = 2

/datum/chemical_reaction/freddo_espresso
	result = "freddo_espresso"
	required_reagents = list("espresso" = 1, "ice" = 1)
	result_amount = 2

/datum/chemical_reaction/caffe_americano
	result = "caffe_americano"
	required_reagents = list("espresso" = 1, "water" = 1)
	result_amount = 2

/datum/chemical_reaction/flat_white
	result = "flat_white"
	required_reagents = list("espresso" = 1, "milk" = 1)
	result_amount = 2

/datum/chemical_reaction/lattemacchiato
	result = "lattemacchiato"
	required_reagents = list("flat_white" = 1, "milk" = 1)
	result_amount = 2

/datum/chemical_reaction/cappuccino
	result = "cappuccino"
	required_reagents = list("espresso" = 1, "cream" = 1)
	result_amount = 2

/datum/chemical_reaction/freddo_cappuccino
	result = "freddo_cappuccino"
	required_reagents = list("cappuccino" = 1, "ice" = 1)
	result_amount = 2

/datum/chemical_reaction/macchiato
	result = "macchiato"
	required_reagents = list("cappuccino" = 1, "espresso" = 1)
	result_amount = 2

/datum/chemical_reaction/mocaccino
	result = "mocaccino"
	required_reagents = list("flat_white" = 1, "hot_coco" = 1)
	result_amount = 2

/datum/chemical_reaction/sromshine
	result = "sromshine"
	required_reagents = list("coffee" = 2, "orangejuice" = 1)
	result_amount = 3

/* Alcohol */

/datum/chemical_reaction/goldschlager
	result = "goldschlager"
	required_reagents = list("vodka" = 10, MATERIAL_GOLD = 1)
	result_amount = 10

/datum/chemical_reaction/patron
	result = "patron"
	required_reagents = list("tequilla" = 10, MATERIAL_SILVER = 1)
	result_amount = 10

/datum/chemical_reaction/bilk
	result = "bilk"
	required_reagents = list("milk" = 1, "beer" = 1)
	result_amount = 2

/datum/chemical_reaction/icetea
	result = "icetea"
	required_reagents = list("ice" = 1, "tea" = 2)
	result_amount = 3

/datum/chemical_reaction/icegreentea
	result = "icegreentea"
	required_reagents = list("ice" = 1, "greentea" = 2)
	result_amount = 3

/datum/chemical_reaction/icecoffee
	result = "icecoffee"
	required_reagents = list("ice" = 1, "coffee" = 2)
	result_amount = 3

/datum/chemical_reaction/nuka_cola
	result = "nuka_cola"
	required_reagents = list("radium" = 1, "cola" = 5)
	result_amount = 5

/datum/chemical_reaction/moonshine
	result = "moonshine"
	required_reagents = list("nutriment" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/grenadine
	result = "grenadine"
	required_reagents = list("berryjuice" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/wine
	result = "wine"
	required_reagents = list("grapejuice" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/pwine
	result = "pwine"
	required_reagents = list("poisonberryjuice" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/melonliquor
	result = "melonliquor"
	required_reagents = list("watermelonjuice" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/bluecuracao
	result = "bluecuracao"
	required_reagents = list("orangejuice" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/spacebeer
	result = "beer"
	required_reagents = list("cornoil" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/vodka
	result = "vodka"
	required_reagents = list("potato" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/sake
	result = "sake"
	required_reagents = list("rice" = 10)
	catalysts = list("enzyme" = 5)
	result_amount = 10

/datum/chemical_reaction/kahlua
	result = "kahlua"
	required_reagents = list("coffee" = 5, "sugar" = 5)
	catalysts = list("enzyme" = 5)
	result_amount = 5

/datum/chemical_reaction/gin_tonic
	result = "gintonic"
	required_reagents = list("gin" = 2, "tonic" = 1)
	result_amount = 3

/datum/chemical_reaction/cuba_libre
	result = "cubalibre"
	required_reagents = list("rum" = 2, "cola" = 1)
	result_amount = 3

/datum/chemical_reaction/martini
	result = "martini"
	required_reagents = list("gin" = 2, "vermouth" = 1)
	result_amount = 3

/datum/chemical_reaction/vodkamartini
	result = "vodkamartini"
	required_reagents = list("vodka" = 2, "vermouth" = 1)
	result_amount = 3

/datum/chemical_reaction/white_russian
	result = "whiterussian"
	required_reagents = list("blackrussian" = 2, "cream" = 1)
	result_amount = 3

/datum/chemical_reaction/whiskey_cola
	result = "whiskeycola"
	required_reagents = list("whiskey" = 2, "cola" = 1)
	result_amount = 3

/datum/chemical_reaction/screwdriver
	result = "screwdrivercocktail"
	required_reagents = list("vodka" = 2, "orangejuice" = 1)
	result_amount = 3

/datum/chemical_reaction/bloody_mary
	result = "bloodymary"
	required_reagents = list("vodka" = 2, "tomatojuice" = 3, "limejuice" = 1)
	result_amount = 6

/datum/chemical_reaction/gargle_blaster
	result = "gargleblaster"
	required_reagents = list("vodka" = 2, "gin" = 1, "whiskey" = 1, "cognac" = 1, "limejuice" = 1)
	result_amount = 6

/datum/chemical_reaction/brave_bull
	result = "bravebull"
	required_reagents = list("tequilla" = 2, "kahlua" = 1)
	result_amount = 3

/datum/chemical_reaction/tequilla_sunrise
	result = "tequillasunrise"
	required_reagents = list("tequilla" = 2, "orangejuice" = 1)
	result_amount = 3

/datum/chemical_reaction/plasma_special
	result = "plasmaspecial"
	required_reagents = list("rum" = 2, "vermouth" = 2, "plasma" = 2)
	result_amount = 6

/datum/chemical_reaction/beepsky_smash
	result = "beepskysmash"
	required_reagents = list("limejuice" = 1, "whiskey" = 1, "iron" = 1)
	result_amount = 2

/datum/chemical_reaction/doctor_delight
	result = "doctorsdelight"
	required_reagents = list("limejuice" = 1, "tomatojuice" = 1, "orangejuice" = 1, "cream" = 2, "tricordrazine" = 1)
	result_amount = 6

/datum/chemical_reaction/irish_cream
	result = "irishcream"
	required_reagents = list("whiskey" = 2, "cream" = 1)
	result_amount = 3

/datum/chemical_reaction/manly_dorf
	result = "manlydorf"
	required_reagents = list ("beer" = 1, "ale" = 2)
	result_amount = 3

/datum/chemical_reaction/hooch
	result = "hooch"
	required_reagents = list ("ethanol" = 2, "fuel" = 1)
	catalysts = list("enzyme" = 5)
	result_amount = 3

/datum/chemical_reaction/irish_coffee
	result = "irishcoffee"
	required_reagents = list("irishcream" = 1, "coffee" = 1)
	result_amount = 2

/datum/chemical_reaction/b52
	result = "b52"
	required_reagents = list("irishcream" = 1, "kahlua" = 1, "cognac" = 1)
	result_amount = 3

/datum/chemical_reaction/atomicbomb
	result = "atomicbomb"
	required_reagents = list("b52" = 10, "radium" = 1)
	result_amount = 10

/datum/chemical_reaction/margarita
	result = "margarita"
	required_reagents = list("tequilla" = 2, "limejuice" = 1)
	result_amount = 3

/datum/chemical_reaction/longislandicedtea
	result = "longislandicedtea"
	required_reagents = list("vodka" = 1, "gin" = 1, "tequilla" = 1, "cubalibre" = 3)
	result_amount = 6

/datum/chemical_reaction/icedtea
	result = "longislandicedtea"
	required_reagents = list("vodka" = 1, "gin" = 1, "tequilla" = 1, "cubalibre" = 3)
	result_amount = 6

/datum/chemical_reaction/threemileisland
	result = "threemileisland"
	required_reagents = list("longislandicedtea" = 10, "radium" = 1)
	result_amount = 10

/datum/chemical_reaction/whiskeysoda
	result = "whiskeysoda"
	required_reagents = list("whiskey" = 2, "sodawater" = 1)
	result_amount = 3

/datum/chemical_reaction/black_russian
	result = "blackrussian"
	required_reagents = list("vodka" = 2, "kahlua" = 1)
	result_amount = 3

/datum/chemical_reaction/manhattan
	result = "manhattan"
	required_reagents = list("whiskey" = 2, "vermouth" = 1)
	result_amount = 3

/datum/chemical_reaction/manhattan_proj
	result = "manhattan_proj"
	required_reagents = list("manhattan" = 10, "radium" = 1)
	result_amount = 10

/datum/chemical_reaction/vodka_tonic
	result = "vodkatonic"
	required_reagents = list("vodka" = 2, "tonic" = 1)
	result_amount = 3

/datum/chemical_reaction/gin_fizz
	result = "ginfizz"
	required_reagents = list("gin" = 1, "sodawater" = 1, "limejuice" = 1)
	result_amount = 3

/datum/chemical_reaction/bahama_mama
	result = "bahama_mama"
	required_reagents = list("rum" = 2, "orangejuice" = 2, "limejuice" = 1, "ice" = 1)
	result_amount = 6

/datum/chemical_reaction/singulo
	result = "singulo"
	required_reagents = list("vodka" = 5, "radium" = 1, "wine" = 5)
	result_amount = 10

/datum/chemical_reaction/alliescocktail
	result = "alliescocktail"
	required_reagents = list("martini" = 1, "vodka" = 1)
	result_amount = 2

/datum/chemical_reaction/demonsblood
	result = "demonsblood"
	required_reagents = list("rum" = 3, "spacemountainwind" = 1, "blood" = 1, "dr_gibb" = 1)
	result_amount = 6

/datum/chemical_reaction/booger
	result = "booger"
	required_reagents = list("cream" = 2, "banana" = 1, "rum" = 1, "watermelonjuice" = 1)
	result_amount = 5

/datum/chemical_reaction/antifreeze
	result = "antifreeze"
	required_reagents = list("vodka" = 1, "cream" = 1, "ice" = 1)
	result_amount = 3

/datum/chemical_reaction/barefoot
	result = "barefoot"
	required_reagents = list("berryjuice" = 1, "cream" = 1, "vermouth" = 1)
	result_amount = 3

/datum/chemical_reaction/riotjuice
	result = "riotjuice"
	required_reagents = list("vodka" = 5, "pineapplejuice" = 5, "bluecuracao" = 5)
	result_amount = 15

/datum/chemical_reaction/grapesoda
	result = "grapesoda"
	required_reagents = list("grapejuice" = 2, "cola" = 1)
	result_amount = 3

/datum/chemical_reaction/sbiten
	result = "sbiten"
	required_reagents = list("vodka" = 10, "capsaicin" = 1)
	result_amount = 10

/datum/chemical_reaction/red_mead
	result = "red_mead"
	required_reagents = list("blood" = 1, "mead" = 1)
	result_amount = 2

/datum/chemical_reaction/mead
	result = "mead"
	required_reagents = list("sugar" = 1, "water" = 1)
	catalysts = list("enzyme" = 5)
	result_amount = 2

/datum/chemical_reaction/iced_beer
	result = "iced_beer"
	required_reagents = list("beer" = 10, "frostoil" = 1)
	result_amount = 10

/datum/chemical_reaction/iced_beer2
	result = "iced_beer"
	required_reagents = list("beer" = 5, "ice" = 1)
	result_amount = 6

/datum/chemical_reaction/grog
	result = "grog"
	required_reagents = list("rum" = 1, "water" = 1)
	result_amount = 2

/datum/chemical_reaction/acidspit
	result = "acidspit"
	required_reagents = list("sacid" = 1, "wine" = 5)
	result_amount = 6

/datum/chemical_reaction/amasec
	result = "amasec"
	required_reagents = list("iron" = 1, "wine" = 5, "vodka" = 5)
	result_amount = 10

/datum/chemical_reaction/changelingsting
	result = "changelingsting"
	required_reagents = list("screwdrivercocktail" = 1, "limejuice" = 1, "lemonjuice" = 1)
	result_amount = 3

/datum/chemical_reaction/aloe
	result = "aloe"
	required_reagents = list("cream" = 1, "whiskey" = 1, "watermelonjuice" = 1)
	result_amount = 3

/datum/chemical_reaction/andalusia
	result = "andalusia"
	required_reagents = list("rum" = 1, "whiskey" = 1, "lemonjuice" = 1)
	result_amount = 3

/datum/chemical_reaction/neurotoxin
	result = "neurotoxin"
	required_reagents = list("gargleblaster" = 1, "stoxin" = 1)
	result_amount = 2

/datum/chemical_reaction/snowwhite
	result = "snowwhite"
	required_reagents = list("beer" = 1, "lemon_lime" = 1)
	result_amount = 2

/datum/chemical_reaction/irishcarbomb
	result = "irishcarbomb"
	required_reagents = list("ale" = 1, "irishcream" = 1)
	result_amount = 2

/datum/chemical_reaction/syndicatebomb
	result = "syndicatebomb"
	required_reagents = list("beer" = 1, "whiskeycola" = 1)
	result_amount = 2

/datum/chemical_reaction/erikasurprise
	result = "erikasurprise"
	required_reagents = list("ale" = 2, "limejuice" = 1, "whiskey" = 1, "banana" = 1, "ice" = 1)
	result_amount = 6

/datum/chemical_reaction/devilskiss
	result = "devilskiss"
	required_reagents = list("blood" = 1, "kahlua" = 1, "rum" = 1)
	result_amount = 3

/datum/chemical_reaction/hippiesdelight
	result = "hippiesdelight"
	required_reagents = list("psilocybin" = 1, "gargleblaster" = 1)
	result_amount = 2

/datum/chemical_reaction/bananahonk
	result = "bananahonk"
	required_reagents = list("banana" = 1, "cream" = 1, "sugar" = 1)
	result_amount = 3

/datum/chemical_reaction/silencer
	result = "silencer"
	required_reagents = list("nothing" = 1, "cream" = 1, "sugar" = 1)
	result_amount = 3

/datum/chemical_reaction/driestmartini
	result = "driestmartini"
	required_reagents = list("nothing" = 1, "gin" = 1)
	result_amount = 2

/datum/chemical_reaction/lemonade
	result = "lemonade"
	required_reagents = list("lemonjuice" = 1, "sugar" = 1, "water" = 1)
	result_amount = 3

/datum/chemical_reaction/kiraspecial
	result = "kiraspecial"
	required_reagents = list("orangejuice" = 1, "limejuice" = 1, "sodawater" = 1)
	result_amount = 3

/datum/chemical_reaction/brownstar
	result = "brownstar"
	required_reagents = list("orangejuice" = 2, "cola" = 1)
	result_amount = 3

/datum/chemical_reaction/milkshake
	result = "milkshake"
	required_reagents = list("cream" = 1, "ice" = 2, "milk" = 2)
	result_amount = 5

/datum/chemical_reaction/rewriter
	result = "rewriter"
	required_reagents = list("spacemountainwind" = 1, "coffee" = 1)
	result_amount = 2

/datum/chemical_reaction/suidream
	result = "suidream"
	required_reagents = list("space_up" = 1, "bluecuracao" = 1, "melonliquor" = 1)
	result_amount = 3

/datum/chemical_reaction/drinks/daiquiri
	result = "daiquiri"
	required_reagents = list("rum" = 3, "limejuice" = 2, "sugar" = 1)
	result_amount = 5

/datum/chemical_reaction/drinks/whiskeysour
	result = "whiskeysour"
	required_reagents = list("whiskey" = 2, "lemonjuice" = 1, "sugar" = 1)
	result_amount = 4

/datum/chemical_reaction/drinks/mojito
	result = "mojito"
	required_reagents = list("rum" = 3, "limejuice" = 1, "ice" = 1)
	result_amount = 5

/datum/chemical_reaction/drinks/balloon
	result = "balloon"
	required_reagents = list("cream" = 1, "bluecuracao" = 1)
	result_amount = 2

/datum/chemical_reaction/drinks/deadrum
	result = "deadrum"
	required_reagents = list("rum" = 3, "limejuice" = 3, "sodiumchloride" = 3)
	result_amount = 6

/datum/chemical_reaction/drinks/miss_fortune
	result = "miss_fortune"
	required_reagents = list("nanatsunoumi" = 1, "redcandyliquor" = 1, "bluecuracao" = 1, "melonliquor" = 1)
	result_amount = 2

/datum/chemical_reaction/drinks/triplecitrus
	result = "triplecitrus"
	required_reagents = list("limejuice" = 1, "orangejuice" = 1, "lemonjuice" = 1)
	result_amount = 3

/datum/chemical_reaction/drinks/sugarrush
	result = "sugarrush"
	required_reagents = list("sugar" = 2, "triplecitrus" = 1) //Optional Karmotrine.
	result_amount = 3

/datum/chemical_reaction/drinks/crevicespike
	result = "crevicespike"
	required_reagents = list("capsaicin" = 2, "triplecitrus" = 1)
	result_amount = 3

/datum/chemical_reaction/drinks/fringeweaver
	result = "fringeweaver"
	required_reagents = list("sugar" = 1, "ethanol" = 3)
	result_amount = 3

/datum/chemical_reaction/drinks/schnapps
	result = "schnapps"
	required_reagents = list("sugar" = 1, "vodka" = 3)
	catalysts = list("ethanol" = 1)
	result_amount = 3

/datum/chemical_reaction/drinks/pianowoman
	result = "pianowoman"
	required_reagents = list("sugar" = 1, "fernet" = 1, "lemon_lime" = 1, "capsaicin" = 1, "bluecuracao" = 1)
	result_amount = 5

/datum/chemical_reaction/drinks/choccymilk
	result = "chocolatemilk"
	required_reagents = list("coco" = 1, "milk" = 1)
	result_amount = 2

/datum/chemical_reaction/strawberrymilk
	result = "strawberrymilk"
	required_reagents = list("berryjuice" = 1, "milk" = 1)
	result_amount = 2

/datum/chemical_reaction/drinks/fernetcola
	result = "fernetcola"
	required_reagents = list("fernet" = 1, "cola" = 1)
	result_amount = 2

/datum/chemical_reaction/drinks/fanciulli
	result = "fanciulli"
	required_reagents = list("manhattan" = 1, "fernet" = 1)
	result_amount = 2
