/datum/species/smutant
	name = "Super Mutant"
	id = "smutant"
	say_mod = "grunts"
	limbs_id = "smutant"
	species_traits = list(NOTRANSSTING,NOGENITALS,NOAROUSAL,NO_UNDERWEAR)
	inherent_traits = list(TRAIT_RADIMMUNE,TRAIT_VIRUSIMMUNE)
	inherent_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	punchstunthreshold = 20
	use_skintones = 0
	sexes = 0 // no sexo
	liked_food = LONGPORK | GROSS | RAW // Patrician taste

/datum/species/smutant/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	for(var/obj/item/bodypart/b in C.bodyparts)
		b.max_damage += 50
	C.faction |= "supermutant"

/datum/species/smutant/on_species_loss(mob/living/carbon/C)
	..()
	C.faction -= "supermutant"
	for(var/obj/item/bodypart/b in C.bodyparts)
		b.max_damage = initial(b.max_damage)

/datum/species/smutant/qualifies_for_rank(rank, list/features)
	if(rank in GLOB.legion_positions) // Legion isn't a fan of muties
		return 0
	if(rank in GLOB.ncr_positions) // Good luck with that
		return 0
	if(rank in GLOB.brotherhood_positions) // Kill it with fire
		return 0
	if(rank in GLOB.vault_positions) // How did they even get in??
		return 0
	return ..()
