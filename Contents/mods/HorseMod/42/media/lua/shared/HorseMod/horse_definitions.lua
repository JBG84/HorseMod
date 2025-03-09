AnimalDefinitions.stages["horse"] = {
    stages = {
        ["filly"] = {
            ageToGrow = 2 * 30, -- we probably won't have a filly model so check what happens if this is set to 0
            nextStage = "mare",
            nextStageMale = "stallion",
            minWeight = 0.1,
            maxWeight = 0.25
        },
        ["mare"] = {
            minWeight = 0.25,
            maxWeight = 0.5
        },
        ["stallion"] = {
            minWeight = 0.25,
            maxWeight = 0.5
        }
    }
}

-- TODO: add horse specific genes (speed, carrying capacity if we added carts or something)
-- these are just copied from deer
AnimalDefinitions.genome["horse"] = {
    genes = {
        ["maxSize"] = "maxSize",
        ["meatRatio"] = "meatRatio",
        ["maxWeight"] = "maxWeight",
        ["lifeExpectancy"] = "lifeExpectancy",
        ["resistance"] = "resistance",
        ["strength"] = "strength",
        ["hungerResistance"] = "hungerResistance",
        ["thirstResistance"] = "thirstResistance",
        ["aggressiveness"] = "aggressiveness",
        ["ageToGrow"] = "ageToGrow",
        ["fertility"] = "fertility",
        ["stress"] = "stress"
    }
}

-- TODO: research appropriate horse breeds
AnimalDefinitions.breeds["horse"] = {
    breeds = {
        ["american_quarter"] = {
            name = "american_quarter",
            texture = "HorseMod/Horse",
            textureMale = "HorseMod/Horse",
            rottenTexture = "HorseMod/Horse",
            textureBaby = "HorseMod/Horse",
            invIconMale = "Item_DeerMale_Dead",
            invIconFemale = "Item_DeerFemale_Dead",
            invIconBaby = "Item_DeerFawn_Dead",
            invIconMaleDead = "Item_DeerMale_Dead",
            invIconFemaleDead = "Item_DeerFemale_Dead",
            invIconBabyDead = "Item_DeerFawn_Dead",
        }
    }
}

-- TODO: all of these are just deer copies

AnimalDefinitions.animals["filly"] = {
    bodyModel = "HorseMod.Horse",
    bodyModelSkel = "HorseMod.Horse",
    textureSkeleton = "HorseMod.Horse",
    textureSkeletonBloody = "HorseMod.Horse",
    bodyModelSkelNoHead = "HorseMod.Horse",
    animset = "buck", -- i don't think we can add one so we'll have to cheat
    animalSize = 0.1,
    modelscript = "HorseMod.Horse",
    shadoww = 1.2,
    shadowfm = 2.6,
    shadowbm = 2.5,
    wanderMul = 300,
    breeds = copyTable(AnimalDefinitions.breeds["horse"].breeds),
    stages = AnimalDefinitions.stages["horse"].stages,
    genes = AnimalDefinitions.genome["horse"].genes,
    minSize = 0.85,
    maxSize = 1.2,
    sitRandomly = true,
    idleTypeNbr = 3,
    wild = false,
    spottingDist = 15,
    group = "horse",
    canBeAlerted = true,
    canBeDomesticated = true,
    canThump = false,
    corpseSize = 5,
    minBlood = 200,
    maxBlood = 600,
    trailerBaseSize = 100,
    eatGrass = true,
    dontAttackOtherMale = true,
    ropeBone = "DEF_Head",
    attackDist = 1
}

AnimalDefinitions.animals["stallion"] = {
    bodyModel = "HorseMod.Horse",
    bodyModelSkel = "HorseMod.Horse",
    textureSkeleton = "HorseMod.Horse",
    textureSkeletonBloody = "HorseMod.Horse",
    bodyModelSkelNoHead = "HorseMod.Horse",
    animset = "buck", -- i don't think we can add one so we'll have to cheat
    modelscript = "HorseMod.Horse",
    bodyModelHeadless = "HorseMod.Horse",
    textureSkinned = "HorseMod/Horse",
    shadoww = 1.2,
    shadowfm = 2.6,
    shadowbm = 2.5,
    minSize = 0.85,
    maxSize = 1.2,
    animalSize = 0.3,
    breeds = copyTable(AnimalDefinitions.breeds["horse"].breeds),
    stages = AnimalDefinitions.stages["horse"].stages,
    genes = AnimalDefinitions.genome["horse"].genes,
    mate = "mare",
    minAge = AnimalDefinitions.stages["horse"].stages["filly"].ageToGrow,
    maxAgeGeriatric = 19 * 30,
    minAgeForBaby = 10,
    babyType = "filly",
    wanderMul = 500,
    sitRandomly = true,
    idleTypeNbr = 3,
    wild = false,
    spottingDist = 19,
    group = "horse",
    canBeAlerted = true,
    canBeDomesticated = true,
    canThump = false,
    corpseSize = 5,
    minBlood = 800,
    maxBlood = 2500,
    male = true,
    trailerBaseSize = 300,
    eatGrass = true,
    -- i don't think horses do this...?
    dontAttackOtherMale = true,
    ropeBone = "DEF_Head",
    attackDist = 1
}

AnimalDefinitions.animals["mare"] = {
    bodyModel = "HorseMod.Horse",
    bodyModelSkel = "HorseMod.Horse",
    textureSkeleton = "HorseMod.Horse",
    textureSkeletonBloody = "HorseMod.Horse",
    bodyModelSkelNoHead = "HorseMod.Horse",
    animset = "buck", -- i don't think we can add one so we'll have to cheat
    modelscript = "HorseMod.Horse",
    bodyModelHeadless = "HorseMod.Horse",
    textureSkinned = "HorseMod/Horse",
    shadoww = 1.2,
    shadowfm = 2.6,
    shadowbm = 2.5,
    minSize = 0.85,
    maxSize = 1.2,
    animalSize = 0.3,
    breeds = copyTable(AnimalDefinitions.breeds["horse"].breeds),
    stages = AnimalDefinitions.stages["horse"].stages,
    genes = AnimalDefinitions.genome["horse"].genes,
    mate = "stallion",
    minAge = AnimalDefinitions.stages["horse"].stages["filly"].ageToGrow,
    maxAgeGeriatric = 19 * 30,
    minAgeForBaby = 10,
    pregnantPeriod = 1,
    babyType = "filly",
    wanderMul = 500,
    sitRandomly = true,
    idleTypeNbr = 3,
    wild = false,
    spottingDist = 19,
    group = "horse",
    canBeAlerted = true,
    canBeDomesticated = true,
    canThump = false,
    corpseSize = 5,
    minBlood = 800,
    maxBlood = 2500,
    female = true,
    trailerBaseSize = 300,
    eatGrass = true,
    dontAttackOtherMale = true,
    ropeBone = "DEF_Head",
    attackDist = 1
}

local stallion_sounds = {
	death = { name = "AnimalVoiceBuckDeath", slot = "voice", priority = 100 },
	fallover = { name = "AnimalFoleyBuckBodyfall" },
	idle = { name = "AnimalVoiceBuckIdle", intervalMin = 10, intervalMax = 20, slot = "voice" },
	pain = { name = "AnimalVoiceBuckPain", slot = "voice", priority = 50 },
	pick_up = { name = "PickUpAnimalDeer", slot = "voice", priority = 1 },
	pick_up_corpse = { name = "PickUpAnimalDeadDeer" },
	put_down = { name = "PutDownAnimalDeer", slot = "voice", priority = 1 },
	put_down_corpse = { name = "PutDownAnimalDeadDeer" },
	run = { name = "AnimalFootstepsBuckRun" },
	stressed = { name = "AnimalVoiceBuckStressed", intervalMin = 5, intervalMax = 10, slot = "voice" },
	walkBack = { name = "AnimalFootstepsBuckWalkBack" },
	walkFront = { name = "AnimalFootstepsBuckWalkFront" },
}
AnimalDefinitions.animals["stallion"].breeds["american_quarter"].sounds = stallion_sounds

local mare_sounds = {
	death = { name = "AnimalVoiceDoeDeath", slot = "voice", priority = 100 },
	fallover = { name = "AnimalFoleyDoeBodyfall" },
	idle = { name = "AnimalVoiceDoeIdle", intervalMin = 10, intervalMax = 20, slot = "voice" },
	pain = { name = "AnimalVoiceDoePain", slot = "voice", priority = 50 },
	pick_up = { name = "PickUpAnimalDeer", slot = "voice", priority = 1 },
	pick_up_corpse = { name = "PickUpAnimalDeadDeer" },
	put_down = { name = "PutDownAnimalDeer", slot = "voice", priority = 1 },
	put_down_corpse = { name = "PutDownAnimalDeadDeer" },
	run = { name = "AnimalFootstepsDoeRun" },
	stressed = { name = "AnimalVoiceDoeStressed", intervalMin = 5, intervalMax = 10, slot = "voice" },
	walkBack = { name = "AnimalFootstepsDoeWalkBack" },
	walkFront = { name = "AnimalFootstepsDoeWalkFront" },
}
AnimalDefinitions.animals["mare"].breeds["american_quarter"].sounds = mare_sounds

local filly_sounds = {
	death = { name = "AnimalVoiceFawnDeath", slot = "voice", priority = 100 },
	fallover = { name = "AnimalFoleyFawnBodyfall" },
	idle = { name = "AnimalVoiceFawnIdle", intervalMin = 6, intervalMax = 12, slot = "voice" },
	pain = { name = "AnimalVoiceFawnPain", slot = "voice", priority = 50 },
	pick_up = { name = "PickUpAnimalFawn", slot = "voice", priority = 1 },
	pick_up_corpse = { name = "PickUpAnimalDeadFawn" },
	put_down = { name = "PutDownAnimalFawn", slot = "voice", priority = 1 },
	put_down_corpse = { name = "PutDownAnimalDeadFawn" },
	run = { name = "AnimalFootstepsFawnRun" },
	stressed = { name = "AnimalVoiceFawnStressed", intervalMin = 3, intervalMax = 8, slot = "voice" },
	walkBack = { name = "AnimalFootstepsFawnWalkBack" },
	walkFront = { name = "AnimalFootstepsFawnWalkFront" },
}
AnimalDefinitions.animals["filly"].breeds["american_quarter"].sounds = filly_sounds

local AVATAR_DEFINITION = {
    zoom = -20,
    xoffset = 0,
    yoffset = -1,
    avatarWidth = 180,
    avatarDir = IsoDirections.SE,
    trailerDir = IsoDirections.SW,
    trailerZoom = -20,
    trailerXoffset = 0,
    trailerYoffset = 0,
    hook = true,
    butcherHookZoom = -20,
    butcherHookXoffset = 0,
    butcherHookYoffset = 0,
    animalPositionSize = 0.6,
    animalPositionX = 0,
    animalPositionY = 0.5,
    animalPositionZ = 0.7
}

AnimalAvatarDefinition["stallion"] = AVATAR_DEFINITION
AnimalAvatarDefinition["mare"] = AVATAR_DEFINITION
AnimalAvatarDefinition["filly"] = AVATAR_DEFINITION
