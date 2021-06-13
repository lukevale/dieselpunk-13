/obj/item/stack/thread
	name = "spool of cotton thread"
	desc = "Some cotton thread. Used for stitchwork"
	singular_name = "strand of cotton thread"
	max_amount = 100
	matter = list(MATERIAL_CLOTH = 1)
	var/thread_type = "cotton"
	var/sewing_qualities = list(
									QUALITY_SEWING = 30,
									QUALITY_SUTURING = 15,

	)
	var/surgical_qualities = list(
									QUALITY_SEWING = 15,
									QUALITY_SUTURING = 30,
	)

/obj/item/stack/thread/leather
	name = "spool of leather cord"
	desc = "Some leather cord. Used for stitchwork, primarily when stitching other leather."
	singular_name = "strand of leather cord"
	matter = list(MATERIAL_CLOTH = 1)

/obj/item/stack/thread/silk
	name = "spool of silk thread"
	desc = "Some spider silk thread. Used for stitchwork, and is very durable."
	singular_name = "strand of silk thread"
	matter = list(MATERIAL_CLOTH = 1)
