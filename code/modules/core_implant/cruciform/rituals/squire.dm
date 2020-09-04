/datum/ritual/cruciform/squire
	name = "priest"
	phrase = null
	desc = ""
	category = "Brother-Corporal"

/datum/ritual/targeted/cruciform/squire
	name = "priest targeted"
	phrase = null
	desc = ""
	category = "Brother-Corporal"

/datum/ritual/cruciform/squire/heal_heathen
	name = "Divine Hymn"
	phrase = "Ora pro nobis, qui non noverunt viam, hi sunt amissa, sed quia dilexit."
	desc = "Heal every person who can see and hear for a small amount, even if they do not have a cruciform. It has a five minute cooldown, and a weak effect, best used to help stabilize a dying patient."
	cooldown = TRUE
	cooldown_time = 5 MINUTES
	cooldown_category = "dhymn"
	power = 25

/datum/ritual/cruciform/squire/heal_heathen/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
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


/datum/ritual/cruciform/squire/heal_heathen/proc/heal_other(mob/living/carbon/human/participant)
		to_chat(participant, "<span class='info'>A sensation of relief bathes you, washing away your some of your pain</span>")
		participant.add_chemical_effect(CE_PAINKILLER, 10)
		participant.adjustBruteLoss(-10)
		participant.adjustFireLoss(-10)
		participant.adjustToxLoss(-10)
		participant.adjustOxyLoss(-20)
		participant.adjustBrainLoss(-2.5)
		participant.updatehealth()

/datum/ritual/cruciform/squire/message
	name = "Sending"
	phrase = "Audit, me audit vocationem. Ego nuntius vobis."
	desc = "Send a message anonymously through the void, straight into the mind of another disciple."
	power = 30

/datum/ritual/cruciform/squire/message/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	var/mob/living/carbon/human/H = pick_disciple_global(user, TRUE)
	if (!H)
		return

	if(user == H)
		fail("You feel stupid.",user,C,targets)
		return FALSE

	var/text = input(user, "What message will you send to the target? The message will be recieved telepathically and they will not know who it is from unless you reveal yourself.", "Sending a message") as text|null
	if (!text)
		return
	to_chat(H, "<span class='notice'><b><font size='3px'><font color='#ffaa00'>A voice speaks in your mind: \"[text]\"</font><b></span>")
	playsound(user.loc, 'sound/machines/signal.ogg', 50, 1)
	playsound(H, 'sound/machines/signal.ogg', 50, 1)
