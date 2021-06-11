/datum/category_item/setup_option/core_implant/cruciform
	name = "Vinculum Cruciform"
	desc = "The implant given to every disciple of Saint Abraham. This one is a standard Vinculum design, having the base-line of a normal cruciform."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform
	restricted_jobs = list(
		/datum/job/smc,
		/datum/job/swo,
		/datum/job/supsec,
		/datum/job/serg,
		/datum/job/inspector,
		/datum/job/medspec,
		/datum/job/trooper,
		/datum/job/officer,
		/datum/job/outsider,
		)
	allowed_depts = CHURCH
	allow_modifications = TRUE
	restricted_to_species = list(FORM_HUMAN, FORM_SABLEKYNE, FORM_KRIOSAN, FORM_AKULA, FORM_MARQUA, FORM_NARAMAD, FORM_OPIFEX, FORM_CINDAR, FORM_CHURCHSYNTH)

/datum/category_item/setup_option/core_implant/cruciform/tessellate
	name = "Tessellate Cruciform"
	desc = "The implant given to every disciple of Saint Abraham. This one is made for those who walk the path of the Tessellate, disciples who promote unity and healing, it charges slightly faster \
	but has a smaller power reserve."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/tessellate

/datum/category_item/setup_option/core_implant/cruciform/lemniscate
	name = "Lemniscate Cruciform"
	desc = "The implant given to every disciple of Saint Abraham. This one is made for those who walk the path of the Lemniscate, disciples who promote the idea that change is itself circular in \
	nature and only through team work and the desire to work together can people prosper. This has the smallest power reserves but the fastest charge of any cruciform."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/lemniscate

/datum/category_item/setup_option/core_implant/cruciform/monomial
	name = "Monomial Cruciform"
	desc = "The implant given to every disciple of Saint Abraham. This one is made for those who walk the path of the Monomial, disciples who promote personal improvement and aesthetic living, \
	focusing more on personal self improvement. This has the largest power reserves of any cruciform but has an incredibly slow charge."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/monomial

/datum/category_item/setup_option/core_implant/cruciform/divisor
	name = "Divisor Cruciform"
	desc = "The implant given to every disciple of Saint Abraham. This one is made for those who walk the path of the Divisor, disciples who promote security of the church and its members, \
	those who walk this path desire to protect the flock through arms, functioning as an internal guard to the Church."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/divisor