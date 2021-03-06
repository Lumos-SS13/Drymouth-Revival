//Fallout 13 shoes directory
/*
/obj/item/clothing/shoes
	var/stepsound = TRUE
*/
/obj/item/clothing/shoes/f13
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/f13/enclave/serviceboots
	name = "enclave service boots"
	desc = "Tall shiny boots with kevlar layers."
	icon_state = "boots_enclave"
	item_state = "boots_enclave"

/obj/item/clothing/shoes/f13/rag
	name = "footcloths"
	desc = "Ripped cloth used as improvised foot strips, instead of shoes. Crude and gets dirty fast."
	icon_state = "rag"
	item_state = "rag"

/obj/item/clothing/shoes/f13/tan
	name = "tan shoes"
	desc = "A pair of tanned leather shoes."
	icon_state = "tan"
	item_state = "tan"

/obj/item/clothing/shoes/f13/brownie //Make a craft recipe, and delete this comment.
	name = "brown shoes"
	desc = "A pair of brown leather shoes made of wasteland animals hides."
	icon_state = "brownie"
	item_state = "brownie"

/obj/item/clothing/shoes/f13/fancy
	name = "black shoes"
	desc = "A pair of fancy black shoes." //Nice shoes!
	icon_state = "fancy"
	item_state = "fancy"

/obj/item/clothing/shoes/f13/cowboy
	name = "cowboy boots"
	desc = "A pair of cowhide boots with spurs.<br>They have a Cuban heel, rounded to pointed toe, high shaft, and, traditionally, no lacing."
	icon_state = "cowboy"
	item_state = "cowboy"

/obj/item/clothing/shoes/f13/explorer
	name = "worn boots"
	desc = "A pair of slightly worn, steel-toed work boots.<br>Good at keeping toes safe from falling junk you find amid the ruins."
	icon_state = "explorer"
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)

/obj/item/clothing/shoes/f13/raidertreads
	name = "raider treads"
	desc = "A decrepit boot on one foot, fuckall on the other, the height of raider fashion."
	icon_state = "raidertreads"
	item_state = "raidertreads"

/obj/item/clothing/shoes/f13/diesel
	name = "male diesel boots"
	desc = "Fancy mens' steel-toed boots."
	icon_state = "diesel_m"
	item_state = "diesel_m"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/f13/diesel/alt
	name = "female diesel boots"
	desc = "Fancy womens' knee-high platform boots with shiny steel clasps."
	icon_state = "diesel_f"
	item_state = "diesel_f"

/obj/item/clothing/shoes/f13/military
	name = "military boots"
	desc = "High speed, no-drag combat boots, designed for use by the U.S. Army before the Great War."
	icon_state = "military"
	item_state = "military"
	permeability_coefficient = 0.05
	clothing_flags = NOSLIP
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)
	strip_delay = 40
	resistance_flags = NONE
	can_be_tied = FALSE
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/f13/military/leather
	name = "leather combat boots"
	desc = "A pair of laced, heavy-duty leather boots designed for hard combat."
	icon_state = "laced"
	item_state = "laced"

/obj/item/clothing/shoes/f13/military/ncr
	name = "patrol boots"
	desc = "A pair of standard issue brown boots, with a puttee."
	icon_state = "ncr_boots"
	item_state = "ncr"

/obj/item/clothing/shoes/f13/military/ncr_officer_boots
	name = "officer boots"
	desc = "A pair of well-polished brown leather calf boots fitted with straps."
	icon_state = "ncr_officer_boots"
	item_state = "ncr_officer_boots"


/obj/item/clothing/shoes/roman
	name = "roman sandals"
	desc = "Sandals with buckled leather straps on it."
	icon = 'icons/fallout/clothing/shoes.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/shoe.dmi'
	icon_state = "legion_sandals"
	item_state = "legion_sandals"
	strip_delay = 100
	equip_delay_other = 100
	permeability_coefficient = 0.9
	can_be_tied = FALSE

/obj/item/clothing/shoes/f13/peltboots
	name = "pelt boots"
	desc = "These boots are made from tanned hide and lined with soft long horner wool. A fashion from wealthy tribes that has spread. "
	icon = 'icons/fallout/clothing/shoes.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/shoe.dmi'
	icon_state = "legion_pelt"
	item_state = "legion_pelt"
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/f13/military/legion
	name = "rough leather boots"
	desc = "A pair of crudely made leather boots, followng the standardized pattern laid down according to the wisdom of Caesar."
	icon = 'icons/fallout/clothing/shoes.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/shoe.dmi'
	icon_state = "legion_leather"
	item_state = "legion_leather"

/obj/item/clothing/shoes/f13/military/plated
	name = "plated war boots"
	desc = "A pair of leather boots reinforced with hardened toe caps and shin guards, usually recycled old workboot steel caps taken from rotted old boots and glued to new ones."
	icon = 'icons/fallout/clothing/shoes.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/shoe.dmi'
	icon_state = "legion_war"
	item_state = "legion_war"
	armor = list(melee = 20, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 0)

/obj/item/clothing/shoes/f13/military/legate
	name = "heavy metal boots"
	desc = "A pair of heavy leather boots with bronzed metal leg guards added. These belong to a Legate of Caesar's Legion."
	icon = 'icons/fallout/clothing/shoes.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/shoe.dmi'
	icon_state = "legion_legate"
	item_state = "legion_legate"
	armor = list(melee = 30, bullet = 30, laser = 20, energy = 20, bomb = 30, bio = 0, rad = 10, fire = 30, acid = 10)

// ---------------------------------------------------------
// Great Khan boots

/obj/item/clothing/shoes/f13/military/khan
	name = "steel-tipped boots"
	desc = "A pair of leather boots reinforced with metal toe caps. The shin guards can be removed easily (alt-click)."
	icon = 'icons/fallout/clothing/khans.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/khaans.dmi'
	icon_state = "khan_boots"
	item_state = "khan_boots"
	armor = list(melee = 20, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 0)
	var/boottoggled = FALSE

/obj/item/clothing/shoes/f13/military/khan/AltClick(mob/user)
	. = ..()
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	boot_toggle(user)
	return TRUE

/obj/item/clothing/shoes/f13/military/khan/ui_action_click()
	boot_toggle()

/obj/item/clothing/shoes/f13/military/khan/proc/boot_toggle()
	set src in usr

	if(!can_use(usr))
		return 0

	to_chat(usr, "<span class='notice'>You mess around with the shin guards.</span>")
	if(src.boottoggled)
		src.icon_state = "[initial(icon_state)]"
		src.item_state = "[initial(icon_state)]"
		src.boottoggled = FALSE
	else if(!src.boottoggled)
		src.icon_state = "[initial(icon_state)]_t"
		src.item_state = "[initial(icon_state)]_t"
		src.boottoggled = TRUE
	usr.update_inv_shoes()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()


/obj/item/clothing/shoes/f13/military/khan_pelt
	name = "tall pelt boots"
	desc = "A pair of soft pelt boots with fur lining."
	icon = 'icons/fallout/clothing/khans.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/khaans.dmi'
	icon_state = "khan_peltboots"
	item_state = "khan_peltboots"

/obj/item/clothing/shoes/f13/miner
	name = "mining boots"
	desc = "Heavy-duty work boots with steel-reinforced toes and some fluffy wool for extra warmth."
	icon_state = "miner"
	item_state = "miner"
	armor = list(melee = 20, bullet = 0, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/f13/tribal_sandals
	icon_state = "tribaltreads"
	icon_state = "tribaltreads"

// Super Mutant Shoes
/obj/item/clothing/shoes/f13/smutant
	name = "oversized sandals"
	desc = "A pair of leather sandals, designed for super mutants."
	icon_state = "mutie_sandals"
	icon_state = "mutie_sandals"
	species_restricted = list("Super Mutant")

/obj/item/clothing/shoes/f13/smutant/boots
	name = "massive boots"
	desc = "A pair of oversized boots constructed from wrapped leather. Too large for a normal person."
	icon_state = "mutie_boots"
	icon_state = "mutie_boots"
	armor = list("tier" = 3, "energy" = 40, "bomb" = 50, "bio" = 60, "rad" = 40, "fire" = 30, "acid" = 20)
	cold_protection = FEET

/obj/item/clothing/shoes/f13/smutant/boots/dark
	icon_state = "mutie_boots_dark"
	icon_state = "mutie_boots_dark"

/obj/item/clothing/shoes/f13/smutant/boots/armored
	name = "massive armored boots"
	desc = "A pair of oversized boots of wrapped leather and scrap plates. Too large for a normal person."
	icon_state = "mutie_boots" // PENDING
	icon_state = "mutie_boots"
