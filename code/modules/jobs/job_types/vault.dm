/*
Vault access doors
Overseer/Security Chief: 19 ACCESS_HEADS
Security: 1 ACCESS_SECURITY
General access: 31 ACCESS_CARGO
Engineering: 10, 11 ACCESS_ENGINE_EQUIP, ACCESS_ENGINE
Science: 47 ACCESS_RESEARCH
here's a tip, go search DEFINES/access.dm
*/
/datum/job/vault
	department_flag = VAULT
	exp_type = EXP_TYPE_VAULT
	faction = FACTION_VAULT

/datum/outfit/job/vault
	gloves = /obj/item/pda
	ears = null

/datum/outfit/job/vault/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
/*
Overseer
*/

/datum/job/vault
	objectivesList = list("Leadership recommends the following goal for this week: Establish trade with the wasteland","Leadership recommends the following goal for this week: Acquire blueprints and interesting artifacts for research", "Leadership recommends the following goal for this week: Expand operations outside the vault")

/datum/job/vault/overseer
	title = "Overseer"
	flag = F13OVERSEER
	head_announce = list("Security")
	total_positions = 0
	spawn_positions = 0
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations."
	description = "You are the leader of the Vault, and your word is law. Working with the Security team and your fellow Vault Dwellers, your goal is to ensure the continued prosperity and survival of the vault, through any and all means necessary."
	supervisors = "Vault-tec"
	selection_color = "#ccffcc"
	req_admin_notify = 1
	exp_requirements = 1500

	outfit = /datum/outfit/job/vault/overseer

	access = list()			//See get_access()
	minimal_access = list()	//See get_access()

/datum/job/vault/overseer/get_access()
	return get_all_accesses()

/datum/outfit/job/vault/overseer
	name = "Overseer"
	jobtype = /datum/job/vault/overseer
	chemwhiz = TRUE

	implants = list(/obj/item/implant/mindshield)

	id = 			/obj/item/card/id/gold
	uniform = 		/obj/item/clothing/under/f13/vault13
	shoes = 		/obj/item/clothing/shoes/jackboots
	backpack = 		/obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/storage/box/ids = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99/executive = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 3,
		/obj/item/crowbar = 1)

/*
Security Chief
*/

/datum/job/vault/sec_chief
	title = "Security Chief"
	flag = F13HOS
	department_head = list("Overseer")
	department_flag = VAULT
	head_announce = list("Security")
	total_positions = 0
	spawn_positions = 0
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations. Participation in special projects, as ordered by the Overseer."
	description = "You answer directly to the Overseer. You are tasked with organising the safety, security and readiness of the Vault, as well as managing the Security team. It is also your duty to secure the Vault against outside invasion. At your discretion, you are encouraged to train capable dwellers in the usage of firearms and issue weapon permits accordingly."
	supervisors = "the Overseer"
	selection_color = "#ccffcc"
	req_admin_notify = 1
	exp_requirements = 1500

	outfit = /datum/outfit/job/vault/sec_chief

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_WEAPONS,ACCESS_FORENSICS_LOCKERS,
						ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_MINING, ACCESS_MEDICAL,
						ACCESS_CARGO, ACCESS_HEADS, ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS,
						ACCESS_MORGUE, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CARGO, ACCESS_HEADS,
						ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_MINERAL_STOREROOM)

/datum/outfit/job/vault/sec_chief
	name = "Security Chief"
	jobtype = /datum/job/vault/sec_chief

	id = /obj/item/card/id/chief

	uniform = 		/obj/item/clothing/under/f13/vault13
	shoes = 		/obj/item/clothing/shoes/jackboots
	suit = 			/obj/item/clothing/suit/armor/vest/vault
	belt = 			/obj/item/storage/belt/security
	r_hand =		/obj/item/gun/ballistic/revolver/colt6520
	l_pocket = 		/obj/item/restraints/handcuffs
	backpack = 		/obj/item/storage/backpack/security
	satchel = 		/obj/item/storage/backpack/satchel/sec
	duffelbag = 	/obj/item/storage/backpack/duffelbag/sec
	box = 			/obj/item/storage/box/security
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 2,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		/obj/item/crowbar = 1)

	implants = list(/obj/item/implant/mindshield)

/*
Vault Doctor
*/
/datum/job/vault/doctor
	title = "Vault-tec Doctor"
	flag = F13DOCTOR
	department_head = list("Overseer")
	total_positions = 0
	spawn_positions = 0
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations. Participation in special projects, as ordered by the Overseer."
	description = "You answer directly to the Overseer. You are tasked with providing medical care to Vault Dwellers and ensuring the medical well-being of everyone in the Vault."
	supervisors = "the Overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/vault/doctor

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_MINERAL_STOREROOM, ACCESS_CARGO)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_MINERAL_STOREROOM, ACCESS_CARGO)

/datum/outfit/job/vault/doctor
	name = "Vault Doctor"
	jobtype = /datum/job/vault/doctor
	chemwhiz = TRUE

	uniform = 		/obj/item/clothing/under/f13/vault13
	shoes = 		/obj/item/clothing/shoes/jackboots
	suit =			/obj/item/clothing/suit/toggle/labcoat
	l_hand = 		/obj/item/storage/firstaid/regular
	suit_store = 	/obj/item/flashlight/pen
	backpack = 		/obj/item/storage/backpack/medic
	satchel = 		/obj/item/storage/backpack/satchel/med
	duffelbag = 	/obj/item/storage/backpack/duffelbag/med
	backpack_contents = list(
		/obj/item/crowbar = 1)

/datum/outfit/job/vault/doctor/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)

/*
Scientist
*/
/datum/job/vault/scientist
	title = "Vault-tec Scientist"
	flag = F13VAULTSCIENTIST
	department_head = list("Overseer")
	total_positions = 0
	spawn_positions = 0
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations. Participation in special projects, as ordered by the Overseer."
	description = "You answer directly to the Overseer. You are tasked with researching new technologies, conducting mining expeditions (with the approval of Security or the Overseer), and upgrading the machinery of the Vault."
	supervisors = "the Overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/vault/scientist

	access = list(ACCESS_ROBOTICS, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM, ACCESS_TECH_STORAGE, ACCESS_CARGO)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM, ACCESS_CARGO)

/datum/outfit/job/vault/scientist
	name = "Vault-tec Scientist"
	jobtype = /datum/job/vault/scientist
	chemwhiz = TRUE

	uniform = 		/obj/item/clothing/under/f13/vault13
	shoes = 		/obj/item/clothing/shoes/jackboots
	suit =			/obj/item/clothing/suit/toggle/labcoat
	backpack = 		/obj/item/storage/backpack/science
	satchel = 		/obj/item/storage/backpack/satchel/tox
	backpack_contents = list(/obj/item/crowbar = 1)

/datum/outfit/job/vault/scientist/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src) //they need this for dissections

/*
Security Officer
*/
/datum/job/vault/security
	title = "Vault-tec Security"
	flag = F13OFFICER
	department_head = list("Security Chief")
	total_positions = 0 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	spawn_positions = 0 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations. Participation in special projects, as ordered by the Overseer."
	description = "You answer directly to the Security Chief, and in their absence, the Overseer. You are the first line of defense against civil unrest and outside intrusion. It is your duty to enforce the laws created by the Overseer and proactively seek out potential threats to the safety of Vault residents."
	supervisors = "the head of security"
	selection_color = "#ddffdd"
	exp_requirements = 600

	outfit = /datum/outfit/job/vault/security

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_WEAPONS,ACCESS_FORENSICS_LOCKERS,
						ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_MINING, ACCESS_MEDICAL,
						ACCESS_CARGO, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS,
						ACCESS_MORGUE, ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CARGO,
						ACCESS_MINERAL_STOREROOM)

/datum/outfit/job/vault/security
	name = "Vault-tec Security"
	jobtype = /datum/job/vault/security

	id = /obj/item/card/id/sec
	uniform = 		/obj/item/clothing/under/f13/vault13
	head = 			/obj/item/clothing/head/helmet/riot/vaultsec
	suit =			/obj/item/clothing/suit/armor/vest
	shoes = 		/obj/item/clothing/shoes/jackboots
	belt = 			/obj/item/storage/belt/security
	r_hand =		/obj/item/gun/ballistic/automatic/pistol/n99
	l_pocket = 		/obj/item/restraints/handcuffs
	backpack = 		/obj/item/storage/backpack/security
	satchel = 		/obj/item/storage/backpack/satchel/sec
	duffelbag = 	/obj/item/storage/backpack/duffelbag/sec
	box = 			/obj/item/storage/box/security
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		/obj/item/crowbar = 1)

	implants = list(/obj/item/implant/mindshield)


/obj/item/radio/headset/headset_sec/alt/department/Initialize()
	. = ..()
	wires = new/datum/wires/radio(src)
	secure_radio_connections = new
	recalculateChannels()

/*
Vault Engineer
*/

/datum/job/vault/vaultengineer
	title = "Vault-tec Engineer"
	flag = F13VAULTENGINEER
	department_head = list("Overseer")
	total_positions = 0
	spawn_positions = 0
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations. Participation in special projects, as ordered by the Overseer."
	description = "You answer directly to the Overseer. You are tasked with overseeing the Reactor, maintaining Vault defenses and machinery, and engaging in construction projects to improve the Vault as a whole."
	supervisors = "the Overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/vault/vaultengineer

	access = list(ACCESS_CARGO, ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_ATMOSPHERICS, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_CARGO, ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_MINERAL_STOREROOM)

/datum/outfit/job/vault/vaultengineer
	name = "Vault-tec Engineer"
	jobtype = /datum/job/vault/vaultengineer

	uniform = 		/obj/item/clothing/under/f13/vault13
	belt = 			/obj/item/storage/belt/utility/full/engi
	shoes = 		/obj/item/clothing/shoes/sneakers/red
	head = 			/obj/item/clothing/head/hardhat
	r_pocket = 		/obj/item/t_scanner
	backpack = 		/obj/item/storage/backpack/industrial
	satchel = 		/obj/item/storage/backpack/satchel/eng
	duffelbag = 	/obj/item/storage/backpack/duffelbag/engineering
	box = 			/obj/item/storage/box/engineer
	backpack_contents = list(/obj/item/crowbar = 1)

/datum/job/vault/dweller
	title = "Vault Dweller"
	flag = ASSISTANT
	total_positions = 0
	spawn_positions = 0
	forbids = "The Vault forbids: Disobeying the Overseer. Deserting the Vault unless it is rendered unhospitable. Killing fellow Vault Dwellers. Betraying the Vault and its people."
	enforces = "The Vault expects: Contributing to Vault society. Adherence to Vault-tec Corporate Regulations. Participation in special projects, as ordered by the Overseer."
	description = "You answer directly to the Overseer, being assigned to fulfill whatever menial tasks are required. You lack an assignment, but may be given one the Overseer if required or requested. You should otherwise busy yourself with assisting personnel with tasks around the Vault."
	supervisors = "absolutely everyone"
	selection_color = "#ddffdd"
	access = list()			//See /datum/job/vault/assistant/get_access()
	minimal_access = list()	//See /datum/job/vault/assistant/get_access()

	outfit = /datum/outfit/job/vault/dweller

/datum/job/vault/dweller/get_access()
	access = list(ACCESS_CARGO)
	minimal_access = list(ACCESS_CARGO)

/datum/outfit/job/vault/dweller
	name = "Vault Dweller"
	jobtype = /datum/job/vault/dweller
	backpack = 		/obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/crowbar = 1)

/datum/outfit/job/vault/dweller/pre_equip(mob/living/carbon/human/H)
	..()
	if (CONFIG_GET(flag/grey_assistants))
		uniform = /obj/item/clothing/under/f13/vault13
		shoes = /obj/item/clothing/shoes/jackboots
	else
		uniform = /obj/item/clothing/under/f13/vault13
		shoes = /obj/item/clothing/shoes/jackboots


/datum/job/vault/New()
	..()
//	if(SSmapping.config.map_name == "Pahrump")
//		total_positions = 0
//		spawn_positions = 0
