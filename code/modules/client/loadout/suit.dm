/datum/gear/suit
	category = LOADOUT_CATEGORY_SUIT
	subcategory = LOADOUT_SUBCATEGORY_SUIT_GENERAL
	slot = SLOT_WEAR_SUIT

/datum/gear/suit/jacketbomber
	name = "Bomber jacket"
	path = /obj/item/clothing/suit/jacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 3

/datum/gear/suit/oldjacketbomber
	name = "Old bomber jacket"
	path = /obj/item/clothing/suit/bomber
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 3

/datum/gear/suit/jacketflannelblack // all of these are reskins of bomber jackets but with the vibe to make you look like a true lumberjack
	name = "Black flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/jacketflannelred
	name = "Red flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/red
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/jacketflannelaqua
	name = "Aqua flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/aqua
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/jacketflannelbrown
	name = "Brown flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/brown
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/jacketleather
	name = "Leather jacket"
	path = /obj/item/clothing/suit/armor/f13/leather_jacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 3

/datum/gear/suit/overcoatleather
	name = "Leather overcoat"
	path = /obj/item/clothing/suit/jacket/leather/overcoat
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 3

/datum/gear/suit/jacketpuffer
	name = "Puffer jacket"
	path = /obj/item/clothing/suit/jacket/puffer
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/vestpuffer
	name = "Puffer vest"
	path = /obj/item/clothing/suit/jacket/puffer/vest
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/jacketlettermanbrown
	name = "Brown letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/jacketlettermanred
	name = "Red letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman_red
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/militaryjacket
	name = "Military Jacket"
	path = /obj/item/clothing/suit/jacket/miljacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 3

/datum/gear/suit/flakjack
	name = "Flak Jacket"
	path = /obj/item/clothing/suit/flakjack
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 3

/datum/gear/suit/armorkit
	name = "Armor Kit"
	path = /obj/item/clothing/suit/armor/f13/kit
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 5
	
/datum/gear/suit/punkkit
	name = "Punk Armor Kit"
	path = /obj/item/clothing/suit/armor/f13/punk
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 5
	
/datum/gear/suit/ncrcfjacket
	name = "NCRCF jacket"
	path = /obj/item/clothing/suit/armor/f13/ncrcfjacket
	cost = 1

/datum/gear/suit/NCRutilityvest
	name = "Utility Vest"
	path = /obj/item/clothing/suit/armor/f13/utilityvest
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JOBS
	cost = 4
	restricted_desc = "NCR"
	restricted_roles = list("NCR Captain",
							"NCR Lieutenant",
							"NCR Medical Officer",
							"NCR Veteran Ranger",
							"NCR Lieutenant",
							"NCR Heavy Trooper",
							"NCR Sergeant First Class",
							"NCR Sergeant",
							"NCR Corporal",
							"NCR Combat Engineer",
							"NCR Combat Medic",
							"NCR Trooper",
							"NCR Rear Echelon",
							"NCR Off-Duty"
						)

// Let this stand as a testament to Lonestar's quality control

// BEGIN_INTERNALS
// END_INTERNALS
// BEGIN_FILE_DIR
#define FILE_DIR .
// END_FILE_DIR
// BEGIN_PREFERENCES
// END_PREFERENCES
// BEGIN_INCLUDE
// END_INCLUDE
