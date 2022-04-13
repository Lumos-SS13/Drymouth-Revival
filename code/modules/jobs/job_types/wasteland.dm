/datum/job/wasteland
	department_flag = WASTELAND

/datum/job/wasteland/enclavespy
	title = "Enclave Private"
	flag = F13USPRIVATE
	faction = FACTION_ENCLAVE
	total_positions = 0
	spawn_positions = 0
	description = "You are an undercover operative for the remnants of the Enclave. You are to remain concealed and attempt to present the Enclave in a positive light to the population of the wasteland unless overt action is absolutely necessary."
	forbids = ""
	enforces = ""
	supervisors = "the United States Government."
	selection_color = "#323232"
	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 1200

	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)

	outfit = /datum/outfit/job/wasteland/enclavespy

/datum/outfit/job/wasteland/enclavespy
	name = "Enclave Private"
	jobtype = /datum/job/wasteland/enclavespy
	backpack = /obj/item/storage/backpack/satchel/leather
	head = 			/obj/item/clothing/head/helmet/f13/combat/enclave
	ears = 			/obj/item/radio/headset/headset_enclave
	glasses = 		/obj/item/clothing/glasses/night
	uniform =		/obj/item/clothing/under/f13/navy
	suit = 			/obj/item/clothing/suit/armor/f13/combat/enclave
	belt = 			/obj/item/storage/belt/military/army
	shoes = 		/obj/item/clothing/shoes/combat/swat
	id = 			/obj/item/card/id/dogtag/enclave
	suit_store =  	/obj/item/gun/ballistic/automatic/assault_carbine

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/grenade/flashbang = 1,
		/obj/item/pda = 1,
		/obj/item/ammo_box/magazine/m556/rifle/extended = 2,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/melee/onehanded/knife/survival = 1
		)

/datum/job/wasteland/enclavesgt
	title = "Enclave Sergeant"
	flag = F13USSGT
	faction = FACTION_ENCLAVE
	total_positions = 0
	spawn_positions = 0
	description = "You are in charge of the recruiting for the remnants of the Enclave. You are to recruit all those interested to your cause."
	forbids = "You are not allowed to have friendly interactions with those outside of the Enclave."
	enforces = "You must maintain the secrecy of organization."
	supervisors = "the United States Government."
	selection_color = "#323232"
	exp_requirements = 2400
	exp_type = EXP_TYPE_FALLOUT
	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)

	outfit = /datum/outfit/job/wasteland/enclavesgt

/datum/outfit/job/wasteland/enclavesgt
	name = "Enclave Sergeant"
	jobtype = /datum/job/wasteland/enclavesgt
	backpack = /obj/item/storage/backpack/satchel/enclave
	ears = 			/obj/item/radio/headset/headset_enclave
	glasses = 		/obj/item/clothing/glasses/night
	uniform =		/obj/item/clothing/under/f13/enclave/peacekeeper
	accessory =     /obj/item/clothing/accessory/ncr/SGT
	belt = 			/obj/item/storage/belt/military/assault/enclave
	shoes = 		/obj/item/clothing/shoes/f13/enclave/serviceboots
	gloves = 		/obj/item/clothing/gloves/combat
	id = 			/obj/item/card/id/dogtag/enclave

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/grenade/flashbang=1,
		/obj/item/pda=1,
		/obj/item/storage/bag/money/small/wastelander=1,
		/obj/item/melee/onehanded/knife/survival=1,
		/obj/item/clothing/head/helmet/f13/helmet/enclave/peacekeeper=1
		)

/datum/outfit/job/wasteland/enclavesgt/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)

/datum/job/wasteland/enclavesci
	title = "Enclave Scientist"
	flag = F13USSCIENTIST
	faction = FACTION_ENCLAVE
	total_positions = 0
	spawn_positions = 0
	description = "You're responsible for the maintenance of the base, the knowledge you've accumulated over the years is the only thing keeping the remnants alive. You've dabbled in enough to be considered a Professor in proficiency, but they call you Doctor. Support your dwindling forces and listen to the Lieutenant."
	forbids = "The Enclave forbids you from leaving the base alone while it is still habitable."
	enforces = "You must maintain the secrecy of organization."
	supervisors = "the United States Government."
	selection_color = "#323232"
	exp_requirements = 2800
	exp_type = EXP_TYPE_FALLOUT
	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)

	outfit = /datum/outfit/job/wasteland/enclavesci

/datum/outfit/job/wasteland/enclavesci
	name = "Enclave Scientist"
	jobtype = /datum/job/wasteland/enclavesci
	backpack = /obj/item/storage/backpack/satchel/enclave
	head = 			/obj/item/clothing/head/helmet/f13/envirosuit
	ears = 			/obj/item/radio/headset/headset_enclave
	glasses = 		/obj/item/clothing/glasses/night
	mask =			/obj/item/clothing/mask/breath/medical
	gloves = 		/obj/item/clothing/gloves/color/latex/nitrile
	uniform =		/obj/item/clothing/under/f13/enclave/science
	suit = 			/obj/item/clothing/suit/armor/f13/environmentalsuit
	belt = 			/obj/item/storage/belt/medical
	shoes = 		/obj/item/clothing/shoes/f13/enclave/serviceboots
	id = 			/obj/item/card/id/dogtag/enclave
	suit_store =  	/obj/item/tank/internals/oxygen

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/grenade/chem_grenade/cleaner=1,
		/obj/item/pda=1,
		/obj/item/gun/energy/laser/ultra_pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/storage/bag/money/small/wastelander=1,
		/obj/item/melee/onehanded/knife/survival=1,
		/obj/item/clothing/head/helmet/f13/helmet/enclave/science=1
		)

/datum/outfit/job/wasteland/enclavesci/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST_EXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_UNETHICAL_PRACTITIONER, src) // Brainwashing


/datum/job/wasteland/enclavelt
	title = "Enclave Lieutenant"
	flag = F13USLT
	faction = FACTION_ENCLAVE
	total_positions = 0
	spawn_positions = 0
	description = "You are the Lieutenant in charge of commanding the remnants of the Enclave forces in the area. You are to recruit all those interested to your cause."
	forbids = "You are not allowed to have friendly interactions with those outside of the Enclave."
	enforces = "You must maintain the secrecy of organization."
	supervisors = "the United States Government."
	selection_color = "#323232"
	exp_requirements = 1500
	exp_type = EXP_TYPE_ENCLAVE

	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)

	outfit = /datum/outfit/job/wasteland/enclavelt

/datum/outfit/job/wasteland/enclavelt
	name = "Enclave Lieutenant"
	jobtype = /datum/job/wasteland/enclavelt
	backpack = /obj/item/storage/backpack/satchel/enclave
	head = /obj/item/clothing/head/helmet/f13/helmet/enclave/officer
	ears = /obj/item/radio/headset/headset_enclave
	glasses = /obj/item/clothing/glasses/night
	mask = /obj/item/clothing/mask/gas/enclave
	uniform = /obj/item/clothing/under/f13/enclave/officer
	accessory = /obj/item/clothing/accessory/ncr/LT1
	belt = /obj/item/storage/belt/military/assault/enclave
	shoes = /obj/item/clothing/shoes/f13/enclave/serviceboots
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/dogtag/enclave

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super = 2,
		/obj/item/grenade/flashbang = 1,
		/obj/item/pda = 1,
		/obj/item/stock_parts/cell/ammo/ec = 3,
		/obj/item/gun/energy/laser/plasma/glock/extended = 1,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		)

/datum/outfit/job/wasteland/enclavelt/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)

/datum/outfit/job/wasteland/enclavelt/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	if(H.mind)
		var/obj/effect/proc_holder/spell/terrifying_presence/S = new /obj/effect/proc_holder/spell/terrifying_presence
		H.mind.AddSpell(S)


////////////////
// GREAT KHAN //
////////////////

/datum/job/wasteland/f13pusher
	title = "Great Khan"
	flag = F13USPRIVATE
	department_head = list("Captain")
	head_announce = list("Security")
	faction = FACTION_WASTELAND
	total_positions = 8
	spawn_positions = 8
	description = "You are no common raider or tribal settler, for you are a Great Khan. Your ancestry is that of fierce warriors and noble chieftans, whose rites and sagas tell of blood soaked battlefields and great sacrifice for your tribe. At least, this was once the case: after the massacre at Bitter Springs by the NCR, your people have lost much of their strength - now you and many other Khans travel west of Vegas through Red Rock Canyon in the hopes of settling in the region of Yuma."
	supervisors = "your gang leadership"
	selection_color = "#ff915e"
	exp_requirements = 1000
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13pusher

	access = list(ACCESS_KHAN)
	minimal_access = list(ACCESS_KHAN)

	loadout_options = list(
		/datum/outfit/loadout/enforcer,
		/datum/outfit/loadout/khanskirmisher,
		)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13raider,
			/datum/job/wasteland/f13pusher,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13raider,
			/datum/job/wasteland/f13pusher,
		),
	)

/datum/outfit/job/wasteland/f13pusher
	name = "Great Khan"
	jobtype = /datum/job/wasteland/f13pusher
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket
	id = /obj/item/card/id/khantattoo
	ears = /obj/item/radio/headset/headset_khans
	head = /obj/item/clothing/head/helmet/f13/khan
	shoes = /obj/item/clothing/shoes/f13/military/khan
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/old
	uniform = /obj/item/clothing/under/f13/khan
	r_hand = /obj/item/book/granter/trait/selection
	r_pocket = /obj/item/flashlight/flare
	l_pocket = /obj/item/storage/survivalkit_khan
	gloves = /obj/item/melee/unarmed/brass/spiked
	box = null
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/jet = 2,
		/obj/item/storage/bag/money/small/khan = 1
		)


/datum/outfit/job/wasteland/f13pusher/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/greatkhans/GK = GLOB.greatkhans
		GLOB.all_gangs |= GK
		GK.add_member(H)
		H.gang = GK

	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombatarmor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombathelmetmk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged_salvaged)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvagedhelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriot_broken)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriothelmet_broken)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriot_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriothelmet_ncr)

	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/thatgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/colt6520)

/datum/outfit/loadout/enforcer
	name = "Enforcer"
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever
	belt = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck=1, \
		/obj/item/ammo_box/shotgun/improvised=1,
		/obj/item/restraints/legcuffs/bola/tactical=1)

/datum/outfit/loadout/khanskirmisher
	name = "Skirmisher"
	r_hand = /obj/item/gun/ballistic/automatic/smg/mini_uzi
	backpack_contents = list(/obj/item/ammo_box/magazine/uzim9mm=3)

//Wasteland Preacher
/datum/job/wasteland/f13preacher
	title = "Preacher"
	flag = F13PREACHER
	faction = FACTION_WASTELAND
	total_positions = 1
	spawn_positions = 1
	supervisors = "God"
	description = "You are the last bastion of faith in this God-forsaken Wasteland. Spread your word and preach to the faithless."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/wasteland/f13preacher

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
		),
	)

/datum/job/wasteland/f13preacher/after_spawn(mob/living/H, mob/M)
	. = ..()
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(GLOB.religion)
		B.deity_name = GLOB.deity
		B.name = GLOB.bible_name
		B.icon_state = GLOB.bible_icon_state
		B.item_state = GLOB.bible_item_state
		to_chat(H, "There is already an established religion onboard the station. You are an acolyte of [GLOB.deity]. Defer to the Chaplain.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = GLOB.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = DEFAULT_RELIGION
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = DEFAULT_DEITY
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity


	switch(lowertext(new_religion))
		if("christianity") // DEFAULT_RELIGION
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("buddhism")
			B.name = "The Sutras"
		if("clownism","honkmother","honk","honkism","comedy")
			B.name = pick("The Holy Joke Book", "Just a Prank", "Hymns to the Honkmother")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("hinduism")
			B.name = "The Vedas"
		if("homosexuality")
			B.name = pick("Guys Gone Wild","Coming Out of The Closet")
		if("imperium")
			B.name = "Uplifting Primer"
		if("islam")
			B.name = "Quran"
		if("judaism")
			B.name = "The Torah"
		if("lampism")
			B.name = "Fluorescent Incandescence"
		if("lol", "wtf", "gay", "penis", "ass", "poo", "badmin", "shitmin", "deadmin", "cock", "cocks", "meme", "memes")
			B.name = pick("Woodys Got Wood: The Aftermath", "War of the Cocks", "Sweet Bro and Hella Jef: Expanded Edition","F.A.T.A.L. Rulebook")
			H.adjustOrganLoss(ORGAN_SLOT_BRAIN, 100) // starts off dumb as fuck
		if("monkeyism","apism","gorillism","primatism")
			B.name = pick("Going Bananas", "Bananas Out For Harambe")
		if("mormonism")
			B.name = "The Book of Mormon"
		if("pastafarianism")
			B.name = "The Gospel of the Flying Spaghetti Monster"
		if("rastafarianism","rasta")
			B.name = "The Holy Piby"
		if("satanism")
			B.name = "The Unholy Bible"
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("servicianism", "partying")
			B.name = "The Tenets of Servicia"
			B.deity_name = pick("Servicia", "Space Bacchus", "Space Dionysus")
			B.desc = "Happy, Full, Clean. Live it and give it."
		if("subgenius")
			B.name = "Book of the SubGenius"
		if("toolboxia","greytide")
			B.name = pick("Toolbox Manifesto","iGlove Assistants")
		if("weeaboo","kawaii")
			B.name = pick("Fanfiction Compendium","Japanese for Dummies","The Manganomicon","Establishing Your O.T.P")
		else
			B.name = "The Holy Book of [new_religion]"

	GLOB.religion = new_religion
	GLOB.bible_name = B.name
	GLOB.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)


/datum/outfit/job/wasteland/f13preacher
	name = "Preacher"
	jobtype = /datum/job/wasteland/f13preacher

	id = null
	ears = /obj/item/radio/headset
	belt = null
	uniform = /obj/item/clothing/under/f13/chaplain
	backpack_contents = list(/obj/item/camera/spooky = 1)
	backpack =		/obj/item/storage/backpack/cultpack
	satchel = 		/obj/item/storage/backpack/cultpack
	l_hand = 		/obj/item/nullrod
	gloves =		/obj/item/clothing/gloves/fingerless
	shoes = 		/obj/item/clothing/shoes/jackboots
	backpack = 		/obj/item/storage/backpack/cultpack
	satchel = 		/obj/item/storage/backpack/cultpack
	r_hand = 		/obj/item/gun/ballistic/revolver/m29
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/ammo_box/m44=2, \
		/obj/item/reagent_containers/food/drinks/flask=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/storage/fancy/candle_box, \
		/obj/item/storage/bag/money/small/settler)

