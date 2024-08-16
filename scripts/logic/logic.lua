-- # defines rules for unlockable characters + their abilities
function can_star()
    return has("bram") and has("star")
end

function can_block()
    return has("zeek") and has("block")
end

-- # defines region access rules for free apex setting
function FREE_APEX_ACCESS()
    return has("ascendant_key") and has("APEX_ON")
end

-- # defines region access rules for white key doors
function DOOR_WHITE_GT_START()
    return (has("gt_white_1") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_GT_MAP()
    return (has("gt_white_2") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_GT_TAUROS()
    return (has("gt_white_3") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_MECH_2ND()
    return (has("mech_white_1") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_MECH_ARENA()
    return (has("mech_white_3") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_MECH_TOP()
    return (has("mech_white_4") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_HOTP_START()
    return (has("hotp_white_1") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_HOTP_CLAW()
    return (has("hotp_white_2") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_HOTP_BOSS()
    return (has("hotp_white_3") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_ROA_WORMS()
    return (has("roa_white_1") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_ROA_ASCEND()
    return (has("roa_white_2") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_ROA_BALLS()
    return (has("roa_white_3") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_ROA_SPINNERS()
    return (has("roa_white_4") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_CATA_TOP()
    return (has("cata_white_1") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_CATA_BLUE()
    return (has("cata_white_2") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

function DOOR_WHITE_CATA_PRISON()
    return (has("cata_white_3") and has("WHITE_ON"))
    or has("WHITE_OFF")
end

-- # defines region access rules for blue key doors
function DOOR_BLUE_MECH_RED()
    return (has("mech_blue_1") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function VOID_C()
    return (has("[mech_blue_1]") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_MECH_SHORTCUT()
    return (has("mech_blue_2") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_MECH_CD()
    return (has("mech_blue_6") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_HOTP_STATUE()
    return (has("hotp_blue_2") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_ROA_FLAMES()
    return (has("roa_blue_1") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_CATA_START()
    return (has("cata_blue_1") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_TR()
    return (has("tr_blue") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

function DOOR_BLUE_CATA_ROOTS()
    return (has("cata_blue_5") and has("BLUE_ON"))
    or has("BLUE_OFF")
end

-- # defines region access rules for red key doors
function DOOR_RED_CATH()
    return (has("red_cathedral") and has("RED_ON"))
    or (has("cloak") and has("RED_OFF"))
end

function DOOR_RED_SP()
    return (has("red_sp") and has("RED_ON"))
    or (has("cloak") and has("bow") and has("RED_OFF"))
end

function DOOR_RED_DEV_ROOM()
    return (has("red_dev") and has("RED_ON"))
    or (has("RED_OFF"))
end

function DOOR_RED_TR()
    return (has("red_tr") and has("RED_ON"))
    or (has("RED_OFF"))
end

-- # defines GO MODE
function GO_MODE()
  return has("eye_red")
  and has("eye_blue")
  and has("eye_green")
  and has("bell")
  and can_access_APEX()
end
