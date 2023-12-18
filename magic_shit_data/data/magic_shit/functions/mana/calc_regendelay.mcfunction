scoreboard players set @s mana.cooldown 100
scoreboard players operation @s mana.cooldown -= @s mana.percentage
scoreboard players operation @s mana.cooldown *= 240 __int__
scoreboard players add @s mana.cooldown 45
scoreboard players operation @s mana.cooldown *= 7 __int__
scoreboard players operation @s mana.cooldown /= 100 __int__
scoreboard players operation @s mana.cooldown /= 20 __int__


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom