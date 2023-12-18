scoreboard players set __logic__0 __variable__ 0
execute if entity @s[gamemode=creative] run scoreboard players set __logic__0 __variable__ 1
execute unless score __logic__0 __variable__ matches 1 if entity @s[tag=mana.infinite] run scoreboard players set __logic__0 __variable__ 1
execute if score __logic__0 __variable__ matches 1 run return 1
scoreboard players operation $temp __variable__ = @s mana.max
scoreboard players operation $temp __variable__ *= -2 __int__
scoreboard players operation $temp2 __variable__ = @s mana
scoreboard players operation $temp2 __variable__ -= $cost __variable__
execute if score $temp2 __variable__ < $temp __variable__ run playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 1 2
execute if score $temp2 __variable__ < $temp __variable__ run return 0
scoreboard players operation @s mana -= $cost __variable__
function magic_shit:mana/calc_percentage
execute if score $cost __variable__ matches ..0 run function magic_shit:mana/calc_regendelay
execute if score @s mana < @s mana.max run tag @s remove mana.full
return 1


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom