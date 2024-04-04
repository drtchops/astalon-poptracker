-- # defines rules for GT area connections
function GT_START_TO_GT_MID()
    return DOOR_WHITE_GT_START()
end

function GT_START_TO_GT_LEFT()
    return has("icarus") 
    or has("boots")
end

function GT_START_TO_APEX()
    return FREE_APEX_ACCESS()
end

function GT_MID_TO_GT_LEFT()
    return DOOR_WHITE_GT_MAP()
end

function GT_MID_TO_CATA_UPPER()
    return DOOR_BLUE_CATA_START()
end

function GT_LEFT_TO_GT_BOSS()
    return DOOR_WHITE_GT_TAUROS()
end

function GT_BOSS_TO_MECH_LOWER()
    return has("eye_red")
end

-- # defines rules for MECH area connections
function MECH_LOWER_TO_MECH_UPPER()
    return (has("mech_white_1") or has("mech_blue_2")) 
    and (has("claw") or has("mech_white_2")) 
end

function MECH_LOWER_TO_HOTP_BOTTOM()
    return DOOR_BLUE_MECH_RED() 
    and has("eye_blue")
end

function MECH_LOWER_TO_HOTP_LOWER()
    return has("claw") 
    and (DOOR_WHITE_MECH_2ND() or DOOR_BLUE_MECH_SHORTCUT())
end

function MECH_UPPER_TO_HOTP_START()
    return (has("eye_blue") or can_star()) 
    and (has("claw") or (DOOR_WHITE_MECH_ARENA() and DOOR_WHITE_MECH_TOP()))
end

function MECH_UPPER_TO_HOTP_UPPER()
    return has("claw") 
    and DOOR_WHITE_MECH_ARENA()
end

function MECH_UPPER_TO_CD()
    return has("eye_blue") 
    and DOOR_BLUE_MECH_CD() 
    and DOOR_WHITE_MECH_ARENA()
end

-- # defines rules for HOTP area connections
function HOTP_LOWER_TO_MECH_LOWER()
    return has("claw") 
    and DOOR_BLUE_HOTP_STATUE()
end

function HOTP_START_TO_HOTP_UPPER()
    return has("void") 
    and has("eye_green") 
    and has("claw")
    and (has ("eye_blue") or (can_star() and has("bell")))
end

function HOTP_START_TO_HOTP_LOWER()
    return can_star()
    or (has("eye_blue") and DOOR_WHITE_HOTP_START())
end

function HOTP_START_TO_MECH_UPPER()
    return can_star()
    and has("eye_blue")
end

function HOTP_BELL_TO_HOTP_MID()
    return has("bell")
end

function HOTP_BELL_TO_CATH()
    return has("eye_green")
    and has("bow")
    and has("bell")
    and has("zeek")
    and has("claw")
    and has("void")
    and DOOR_RED_CATH()
end

function HOTP_MID_TO_HOTP_UPPER()
    return has("claw")
    or DOOR_WHITE_HOTP_CLAW()
end

function HOTP_MID_TO_HOTP_START()
    return can_star()
end

function HOTP_UPPER_TO_ROA_LOWER()
    return has("bell")
    and has("claw")
    and DOOR_WHITE_HOTP_BOSS()
end

function HOTP_UPPER_TO_HOTP_MID()
    return has("cloak")
    or has("icarus")
end

function HOTP_UPPER_TO_HOTP_START()
    return has("eye_green")
    and has("claw")
    and has("cloak")
    and has("void")
end

function HOTP_UPPER_TO_MECH_UPPER()
    return has("eye_green")
    and has("claw")
    and has("cloak")
end

-- # defines rules for ROA area connections
function ROA_LOWER_TO_ROA_MID()
    return DOOR_WHITE_ROA_WORMS()
    and (DOOR_WHITE_ROA_ASCEND() or (can_star() and DOOR_BLUE_ROA_FLAMES()))
end

function ROA_MID_TO_ROA_UPPER()
    return DOOR_WHITE_ROA_BALLS()
    and DOOR_WHITE_ROA_SPINNERS()
end

function ROA_UPPER_TO_APEX()
    return has("eye_green")
end

function ROA_UPPER_TO_SP()
    return DOOR_RED_SP()
end

function APEX_TO_BOSS()
    return has("eye_red")
    and has("eye_blue")
    and has("eye_green")
    and has("bell")
end

-- # defines rules for CATA area connections
function CATA_UPPER_TO_CATA_MID()
    return has("eye_red")
    and DOOR_WHITE_CATA_TOP()
end

function CATA_MID_TO_CATA_LOWER()
    return has("eye_blue")
    and DOOR_WHITE_CATA_BLUE()
    and (has("claw") or (has("zeek") and has("bell")))
end

function CATA_MID_TO_CATA_ROOTS()
    return has("bow")
    and DOOR_BLUE_CATA_ROOTS()
    and (has("claw") or (has("zeek") and has("bell")))
end

function CATA_MID_TO_DEV_ROOM()
    return has("bow")
    and has("bell")
    and can_block()
    and has("claw")
    and can_star()
    and has("eye_green")
    and has("eye_blue")
    and DOOR_RED_DEV_ROOM()
end

function CATA_LOWER_TO_TR()
    return has("void")
    and has("claw")
    and has("bell")
    and has("banish")
    and DOOR_WHITE_CATA_PRISON()
end

function TR_TO_TR_PROPER()
    return DOOR_BLUE_TR()
    and DOOR_RED_TR()
end

-- # defines summarized area access rules
function can_access_GT_LEFT()
    return GT_START_TO_GT_LEFT()
    or GT_START_TO_GT_MID()
end

function can_access_GT_MID()
    return GT_START_TO_GT_MID()
    or (GT_START_TO_GT_LEFT() and GT_LEFT_TO_GT_MID())
end

function can_access_GT_BOSS()
    return can_access_GT_LEFT()
    and GT_LEFT_TO_GT_BOSS()
end

function can_access_MECH_LOWER()
    return can_access_GT_BOSS()
    and GT_BOSS_TO_MECH_LOWER()
end

function can_access_GT_UPPER()
    return can_access_MECH_LOWER()
end

function can_access_MECH_UPPER()
    return (can_access_MECH_LOWER() and MECH_LOWER_TO_MECH_UPPER())
    or (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_START() and HOTP_START_TO_MECH_UPPER())
    or (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_UPPER() and HOTP_UPPER_TO_HOTP_START() and HOTP_START_TO_MECH_UPPER())
end

function can_access_HOTP_LOWER()
    return (can_access_MECH_LOWER() and MECH_LOWER_TO_HOTP_LOWER())
    or (can_access_MECH_LOWER() and MECH_LOWER_TO_HOTP_BOTTOM())
    or (can_access_MECH_LOWER() and MECH_LOWER_TO_MECH_UPPER() and MECH_UPPER_TO_HOTP_START() and HOTP_START_TO_HOTP_LOWER())
end

function can_access_CATH()
    return can_access_MECH_LOWER()
    and HOTP_BELL_TO_CATH()
end

function can_access_HOTP_BOTTOM()
    return can_access_MECH_LOWER() 
    and MECH_LOWER_TO_HOTP_BOTTOM()
end

function can_access_HOTP_MID()
    return (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID())
    or (can_access_MECH_LOWER() and MECH_LOWER_TO_MECH_UPPER() and MECH_UPPER_TO_HOTP_UPPER() and HOTP_UPPER_TO_HOTP_MID())
end

function can_access_HOTP_START()
    return (can_access_MECH_LOWER() and MECH_LOWER_TO_MECH_UPPER() and MECH_UPPER_TO_HOTP_START())
    or (can_access_MECH_LOWER() and MECH_LOWER_TO_MECH_UPPER() and MECH_UPPER_TO_HOTP_UPPER() and HOTP_UPPER_TO_HOTP_START())
    or (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_START())
    or (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_UPPER() and HOTP_UPPER_TO_HOTP_START())
end

function can_access_HOTP_UPPER()
    return (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_UPPER())
    or (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_START() and HOTP_START_TO_HOTP_UPPER())
    or (can_access_HOTP_LOWER() and HOTP_BELL_TO_HOTP_MID() and HOTP_MID_TO_HOTP_START() and HOTP_START_TO_MECH_UPPER() and MECH_UPPER_TO_HOTP_UPPER())
    or (can_access_MECH_LOWER() and MECH_LOWER_TO_MECH_UPPER() and MECH_UPPER_TO_HOTP_UPPER())
end

function can_access_ROA_LOWER()
    return can_access_HOTP_UPPER()
    and HOTP_UPPER_TO_ROA_LOWER()
end

function can_access_ROA_MID()
    return can_access_ROA_LOWER()
    and ROA_LOWER_TO_ROA_MID()
end

function can_access_ROA_UPPER()
    return can_access_ROA_MID()
    and ROA_MID_TO_ROA_UPPER()
end

function can_access_APEX()
    return (can_access_ROA_UPPER() and ROA_UPPER_TO_APEX())
    or FREE_APEX_ACCESS()
end

function can_access_SP()
    return can_access_ROA_UPPER()
    and ROA_UPPER_TO_SP()
end

function can_access_DARK()
    return can_access_ROA_UPPER()
    and ROA_UPPER_TO_DARK()
end

function can_access_CATA_UPPER()
    return can_access_GT_MID()
    and GT_MID_TO_CATA_UPPER()
end

function can_access_CATA_MID()
    return can_access_CATA_UPPER()
    and CATA_UPPER_TO_CATA_MID()
end

function can_access_CATA_LOWER()
    return can_access_CATA_MID()
    and CATA_MID_TO_CATA_LOWER()
end

function can_access_DEV_ROOM()
    return can_access_CATA_MID()
    and CATA_MID_TO_DEV_ROOM()
end

function can_access_CATA_ROOTS()
    return can_access_CATA_MID()
    and CATA_MID_TO_CATA_ROOTS()
end

function can_access_TR()
    return can_access_CATA_LOWER()
    and CATA_LOWER_TO_TR()
end

function can_access_TR_PROPER()
    return can_access_TR()
    and TR_TO_TR_PROPER()
end

-- # defines shop access rules
function CHEAP_SHOP()
    return can_access_GT_LEFT()
  end
  
function MODERATE_SHOP()
    return can_access_MECH_LOWER()
end

function EXPENSIVE_SHOP()
    return can_access_ROA_LOWER()
end