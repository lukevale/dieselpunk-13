/obj/item/weapon/coreimplant_upgrade/cruciform
	name = ""
	desc = "Upgrade module for coreimplant. Must be activated after install."
	icon_state = "cruciform_upgrade"
	implant_type = /obj/item/weapon/implant/core_implant/cruciform

/obj/item/weapon/coreimplant_upgrade/cruciform/priest
	name = "Induction Kit"
	desc = "The first stage of promoting a Novice. Requires a ritual from a member of the Clergy to activate"
	implant_type = /obj/item/weapon/implant/core_implant/cruciform

/obj/item/weapon/coreimplant_upgrade/cruciform/priest/set_up()
	module = new CRUCIFORM_PRIEST_CONVERT
	module.set_up()

/obj/item/weapon/coreimplant_upgrade/cruciform/squire
	name = "Esquire Kit"
	desc = "A module required to promote a Private to the rank of Squire. "
	implant_type = /obj/item/weapon/implant/core_implant/cruciform

/obj/item/weapon/coreimplant_upgrade/cruciform/squire/set_up()
	module = new CRUCIFORM_SQUIRE_CONVERT
	module.set_up()

/obj/item/weapon/coreimplant_upgrade/cruciform/sergeant
	name = "Squire Promotion Kit"
	desc = "A module required to promote a Squire to the rank of Brother-Sergeant"
	implant_type = /obj/item/weapon/implant/core_implant/cruciform

/obj/item/weapon/coreimplant_upgrade/cruciform/sergeant/set_up()
	module = new CRUCIFORM_SERGEANT_CONVERT
	module.set_up()

/obj/item/weapon/coreimplant_upgrade/cruciform/knight
	name = "Knighthood Kit"
	desc = "A module required to promote a Squire or Sergeant to the rank of Brother-Knight."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform

/obj/item/weapon/coreimplant_upgrade/cruciform/knight/set_up()
	module = new CRUCIFORM_KNIGHT_CONVERT
	module.set_up()

/obj/item/weapon/coreimplant_upgrade/cruciform/inquisitor
	name = "Confessor Kit"
	desc = "A module that can promote a Brother-Knight to the rank of Confessor."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform

/obj/item/weapon/coreimplant_upgrade/cruciform/inquisitor/set_up()
	module = new CRUCIFORM_INQUISITOR
	module.set_up()

/obj/item/weapon/coreimplant_upgrade/cruciform/obey
	name = "Obey upgrade"
	desc = "Forces cruciform wearer to obey your orders."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform


/obj/item/weapon/coreimplant_upgrade/cruciform/obey/on_install(var/target,var/mob/living/user_mob)
	if(istype(user_mob))
		user = user_mob
		module.user = user

/obj/item/weapon/coreimplant_upgrade/cruciform/obey/set_up()
	module = new CRUCIFORM_OBEY_ACTIVATOR
	module.set_up()

