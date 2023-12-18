function magic_shit:mana/calc_regenrate
scoreboard players operation @s mana += @s mana.regenrate
scoreboard players operation @s mana < @s mana.max
function magic_shit:mana/calc_percentage
execute if score @s mana = @s mana.max run function magic_shit:__private__/if_else/0


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom