////////////////////HOLOSIGN///////////////////////////////////////
/obj/machinery/holosign
	name = "holosign"
	desc = "Small wall-mounted holographic projector."
	icon = 'icons/obj/holosign.dmi'
	icon_state = "sign_off"
	layer = ABOVE_MOB_LAYER
	use_power = IDLE_POWER_USE
	idle_power_usage = 2
	active_power_usage = 4
	anchored = 1
	var/lit = 0
	var/id = null
	var/on_icon = "sign_on"
	var/_wifi_id
	var/datum/wifi/receiver/button/holosign/wifi_receiver

/obj/machinery/holosign/Initialize()
	. = ..()
	if(_wifi_id)
		wifi_receiver = new(_wifi_id, src)

/obj/machinery/holosign/Destroy()
	qdel(wifi_receiver)
	wifi_receiver = null
	return ..()

/obj/machinery/holosign/proc/toggle()
	if (stat & (BROKEN|NOPOWER))
		return
	lit = !lit
	use_power = lit ? 2 : 1
	update_icon()

/obj/machinery/holosign/update_icon()
	if (!lit)
		icon_state = "sign_off"
	else
		icon_state = on_icon

/obj/machinery/holosign/power_change()
	if (stat & NOPOWER)
		lit = 0
		use_power = NO_POWER_USE
	update_icon()

/obj/machinery/holosign/surgery
	name = "surgery holosign"
	desc = "Small wall-mounted holographic projector. This one indicates a surgery is in process on the room."
	on_icon = "surgery"

/obj/machinery/holosign/service
	name = "in use holosign"
	desc = "Small wall-mounted holographic projector. This one indicates the room is currently in use."
	on_icon = "service"

////////////////////SWITCH///////////////////////////////////////

/obj/machinery/button/switch/holosign
	name = "holosign switch"
	desc = "A remote control switch for holosign."
	icon = 'icons/obj/machines/buttons.dmi'
	icon_state = "light0"

/obj/machinery/button/switch/holosign/attack_hand(mob/user as mob)
	use_power(5)
	active = !active
	icon_state = "light1"
	
	for(var/obj/machinery/holosign/M in SSmachines.machinery)
		if (M.id == src.id)
			spawn( 0 )
				M.toggle()
				return

	return
