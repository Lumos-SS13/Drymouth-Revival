// In this document: Heavy armor (not powerarmor)


///////////////
// WASTELAND //
///////////////

// Recipe Firesuit + metal chestplate + 50 welding fuel + 1 HQ + 1 plasteel
/obj/item/clothing/suit/armored/heavy/sulphite
	name = "sulphite raider suit"
	desc = "There are still some old asbestos fireman suits laying around from before the war. How about adding a ton of metal, plasteel and a combustion engine to one? The resulting armor is surprisingly effective at dissipating energy."
	icon_state = "sulphite"
	item_state = "sulphite"
	armor = list("melee" = 55, "bullet" = 40, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 25, "rad" = 30, "fire" = 95, "acid" = 15)
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armored/heavy/metal
	name = "metal armor suit"
	desc = "A suit of welded, fused metal plates. Bulky, but with great protection."
	icon_state = "raider_metal"
	item_state = "raider_metal"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 30, "energy" = 20, "bomb" = 30, "bio" = 10, "rad" = 25, "fire" = 20, "acid" = 20)

/obj/item/clothing/suit/armored/heavy/recycled_power
	name = "recycled power armor"
	desc = "Taking pieces off from a wrecked power armor will at least give you thick plating, but don't expect too much of this shot up, piecemeal armor.."
	icon_state = "recycled_power"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 30, "energy" = 25, "bomb" = 35, "bio" = 5, "rad" = 15, "fire" = 15, "acid" = 5)

/obj/item/clothing/suit/armored/heavy/raidermetal
	name = "iron raider suit"
	desc = "More rust than metal, with gaping holes in it, this armor looks like a pile of junk. Under the rust some quality steel still remains however."
	icon_state = "raider_metal"
	item_state = "raider_metal"
	armor = list("melee" = 55, "bullet" = 40, "laser" = 15, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 15, "fire" = 20, "acid" = 0)

/obj/item/clothing/suit/armored/heavy/wardenplate
	name = "warden plates"
	desc = "Thick metal breastplate with a decorative skull on the shoulder."
	icon_state = "wardenplate"
	armor = list("melee" = 55, "bullet" = 50, "laser" = 35, "energy" = 25, "bomb" = 30, "bio" = 0, "rad" = 15, "fire" = 10, "acid" = 10)

/obj/item/clothing/suit/armored/heavy/riotpolice
	name = "riot police armor"
	icon_state = "bulletproof_heavy"
	item_state = "bulletproof_heavy"
	desc = "Heavy armor with ballistic inserts, sewn into a padded riot police coat."
	armor = list("melee" = 70, "bullet" = 45, "laser" = 20, "energy" = 20, "bomb" = 45, "bio" = 35, "rad" = 10, "fire" = 50, "acid" = 10)

/obj/item/clothing/suit/armored/heavy/salvaged_raider
	name = "raider salvaged power armor"
	desc = "A destroyed T-45b power armor has been brought back to life with the help of a welder and lots of scrap metal."
	icon_state = "raider_salvaged"
	item_state = "raider_salvaged"
	armor = list("melee" = 60, "bullet" = 65, "laser" = 50, "energy" = 40, "bomb" = 40, "bio" = 55, "rad" = 25, "fire" = 55, "acid" = 15, "wound" = 25)
	slowdown = 0.8

/obj/item/clothing/suit/armored/heavy/salvaged_t45
	name = "salvaged T-45b power armor"
	desc = "It's a set of early-model T-45 power armor with a custom air conditioning module and stripped out servomotors. Bulky and slow, but almost as good as the real thing."
	icon_state = "t45b_salvaged"
	item_state = "t45b_salvaged"
	armor = list("melee" = 65, "bullet" = 70, "laser" = 55, "energy" = 45, "bomb" = 45, "bio" = 60, "rad" = 30, "fire" = 60, "acid" = 20, "wound" = 30)
	slowdown = 1


//Recipe bone armor + metal and leather
/obj/item/clothing/suit/armored/heavy/tribal
	name = "tribal heavy carapace"
	desc = "Thick layers of leather and bone, with metal reinforcements, surely this will make the wearer tough and uncaring for claws and blades."
	icon_state = "tribal_heavy"
	item_state = "tribal_heavy"
	armor = list("melee" = 55, "bullet" = 20, "laser" = 25, "energy" = 20, "bomb" = 45, "bio" = 5, "rad" = 10, "fire" = 30, "acid" = 10)
	allowed = list(/obj/item/twohanded, /obj/item/melee/onehanded, /obj/item/melee/smith, /obj/item/melee/smith/twohand)


/////////
// NCR //
/////////

/obj/item/clothing/suit/armored/heavy/salvaged_NCR
	name = "salvaged NCR power armor"
	desc = "It's a set of T-45b power armor with a air conditioning module installed, sadly it lacks servomotors to enhance the users strength. The paintjob and the two headed bear painted onto the chestplate shows it belongs to the NCR."
	icon_state = "ncr_salvaged"
	item_state = "ncr_salvaged"
	armor = list("melee" = 65, "bullet" = 70, "laser" = 55, "energy" = 45, "bomb" = 45, "bio" = 60, "rad" = 30, "fire" = 60, "acid" = 20, "wound" = 30)
	slowdown = 1



////////////
// LEGION //
////////////

// Recipe combine veteran armor with a kevlar vest
/obj/item/clothing/suit/armored/heavy/legion/breacher
	name = "legion breacher armor"
	desc = "A suit with the standard metal reinforcements of a veteran and a patched bulletproof vest worn over it."
	icon_state = "legion_heavy"
	item_state = "legion_heavy"
	armor = list("melee" = 65, "bullet" = 45, "laser" = 30, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 25, "fire" = 30, "acid" = 5)

/obj/item/clothing/suit/armored/heavy/legion/centurion
	name = "legion centurion armor"
	desc = "The Legion centurion armor is by far the strongest suit of armor available to Caesar's Legion. The armor is composed from other pieces of armor taken from that of the wearer's defeated opponents in combat."
	icon_state = "legion_centurion"
	armor = list("melee" = 70, "bullet" = 50, "laser" = 35, "energy" = 35, "bomb" = 40, "bio" = 30, "rad" = 25, "fire" = 40, "acid" = 10)

/obj/item/clothing/suit/armored/heavy/legion/palacent
	name = "paladin-slayer centurion armor"
	desc = "The armor of a Centurion who has bested one or more Brotherhood Paladins, adding pieces of his prizes to his own defense. The symbol of the Legion is crudely painted on this once-marvelous suit of armor."
	icon_state = "legion_palacent"
	armor = list("melee" = 70, "bullet" = 60, "laser" = 50, "energy" = 40, "bomb" = 45, "bio" = 30, "rad" = 30, "fire" = 50, "acid" = 20)

/obj/item/clothing/suit/armored/heavy/legion/rangercent
	name = "ranger-hunter centurion armor"
	desc = "A suit of armor collected over the years by the deaths of countless NCR rangers."
	icon_state = "legion_rangercent"
	item_state = "legion_rangercent"
	armor = list("melee" = 65, "bullet" = 50, "laser" = 30, "energy" = 30, "bomb" = 35, "bio" = 30, "rad" = 25, "fire" = 50, "acid" = 10)
	slowdown = 0.05

/obj/item/clothing/suit/armored/heavy/legion/legate
	name = "legion legate armor"
	desc = "The armor appears to be a full suit of heavy gauge steel and offers full body protection. It also has a cloak in excellent condition, but the armor itself bears numerous battle scars and the helmet is missing half of the left horn. The Legate's suit appears originally crafted, in contrast to other Legion armor which consists of repurposed pre-War sports equipment."
	icon_state = "legion_legate"
	armor = list("melee" = 70, "bullet" = 60, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 50, "rad" = 30, "fire" = 70, "acid" = 20)
