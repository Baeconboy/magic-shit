execute unless score @s mana.max = @s mana.max run scoreboard players operation @s mana.max = $default.mana.max __variable__
execute unless score @s mana = @s mana run scoreboard players operation @s mana = @s mana.max
function magic_shit:mana/calc_percentage


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom