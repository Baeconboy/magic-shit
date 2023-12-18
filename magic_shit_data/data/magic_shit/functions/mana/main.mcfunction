execute as @e[scores={mana.cooldown=1..}] run scoreboard players remove @s mana.cooldown 1
execute as @e[tag=!mana.full,scores={mana.cooldown=0}] at @s run function magic_shit:mana/regenmana
execute as @a[predicate=magic_shit:showmana,tag=creative] run tag @s remove creative
execute as @a[predicate=magic_shit:showmana] at @s run function magic_shit:mana/updatedisplay
execute as @a[predicate=!magic_shit:showmana,tag=!creative] run function magic_shit:__private__/anonymous/0


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom