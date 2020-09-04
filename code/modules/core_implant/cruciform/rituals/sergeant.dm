/datum/ritual/cruciform/sergeant
	name = "sergeant"
	phrase = null
	desc = ""
	category = "Brother-Sergeant"

/datum/ritual/targeted/cruciform/sergeant
	name = "sergeant targeted"
	phrase = null
	desc = ""
	category = "Brother-Sergeant"

/datum/ritual/cruciform/sergeant/heal_heathen
	name = "Restoring Revellations"
	phrase = "Ego sum Alpha et Omega. Et initium et finis. Et dabit ille qui ad sitiens ad fontem aquarum vitae gratis."
	desc = "Heal every person who can see and hear for a small amount, even if they do not have a cruciform. This version is more powerful, but cannot be used in conjunction with Healing Word"
	cooldown = TRUE
	cooldown_time = 5 MINUTES
	cooldown_category = "dhymn"
	power = 50

/datum/ritual/cruciform/sergeant/heal_heathen/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/list/people_around = list()
	for(var/mob/living/carbon/human/H in view(user))
		if(H != user && !isdeaf(H))
			people_around.Add(H)

	if(people_around.len > 0)
		to_chat(user, SPAN_NOTICE("Your feel the air thrum with an inaudible vibration."))
		playsound(user.loc, 'sound/machines/signal.ogg', 50, 1)
		for(var/mob/living/carbon/human/participant in people_around)
			to_chat(participant, SPAN_NOTICE("You hear a silent signal..."))
			heal_other(participant)
		set_personal_cooldown(user)
		return TRUE
	else
		fail("Your cruciform sings, alone, unto the void.", user, C)
		return FALSE


/datum/ritual/cruciform/sergeant/heal_heathen/proc/heal_other(mob/living/carbon/human/participant)
		to_chat(participant, "<span class='info'>A sensation of relief bathes you, washing away your some of your pain</span>")
		participant.add_chemical_effect(CE_PAINKILLER, 20)
		participant.adjustBruteLoss(-20)
		participant.adjustFireLoss(-20)
		participant.adjustToxLoss(-20)
		participant.adjustOxyLoss(-40)
		participant.adjustBrainLoss(-2.5)
		participant.updatehealth()