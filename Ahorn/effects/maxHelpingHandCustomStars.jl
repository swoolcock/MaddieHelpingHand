﻿module MaxHelpingHandCustomStars

using ..Ahorn, Maple

@mapdef Effect "MaxHelpingHand/CustomStars" CustomStars(only::String="*", exclude::String="", spriteDirectory::String="bgs/02/stars", tint::String="", starCount::String="")

placements = CustomStars

function Ahorn.canFgBg(effect::CustomStars)
    return true, true
end

function Ahorn.editingOptions(effect::CustomStars)
    return Dict{String, Any}(
        "spriteDirectory" => String["bgs/02/stars", "bgs/MaxHelpingHand/graystars"],
        "tint" => String["ffffff", "008080"]
    )
end

end
