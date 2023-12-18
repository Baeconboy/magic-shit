scoreboard players operation $perc __variable__ = @s mana.percentage
scoreboard players operation $perc __variable__ /= 5 __int__
execute if score $perc __variable__ > @s mana.percentage.prev if score $perc __variable__ matches 1.. run playsound minecraft:block.amethyst_cluster.break player @s ~ ~ ~ 0.05 2
execute if score $perc __variable__ > @s mana.percentage.prev if score $perc __variable__ matches ..-1 run playsound minecraft:block.amethyst_cluster.break player @s ~ ~ ~ 0.05 0
execute if score $perc __variable__ matches ..-1 if score @s mana.percentage.prev matches 0.. run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
execute if score $perc __variable__ matches 1.. if score @s mana.percentage.prev matches ..0 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
execute if score $perc __variable__ matches ..-21 if score @s mana.percentage.prev matches -20.. run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 2
execute if score $perc __variable__ matches -19.. if score @s mana.percentage.prev matches ..-20 run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
scoreboard players operation @s mana.percentage.prev = $perc __variable__
scoreboard players set __found_case__ __variable__ 0
execute store result storage magic_shit:__storage__ switch_key int 1 run scoreboard players get $perc __variable__
function magic_shit:__private__/switch_case/0/select with storage magic_shit:__storage__
execute unless score __found_case__ __variable__ matches 1 run function magic_shit:__private__/switch_case/0/default


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom