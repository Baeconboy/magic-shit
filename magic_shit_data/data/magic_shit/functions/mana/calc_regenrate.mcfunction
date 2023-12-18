scoreboard players set @s mana.regenrate 100
scoreboard players operation @s mana.regenrate *= @s mana.max
scoreboard players operation @s mana.regenrate /= 7 __int__
scoreboard players operation @s mana.regenrate /= 100 __int__
scoreboard players add @s mana.regenrate 1
scoreboard players operation @s mana.regenrate += @s mana.regenbonus
scoreboard players set $temp mana.regenrate 100
scoreboard players operation $temp mana.regenrate *= @s mana
scoreboard players operation $temp mana.regenrate /= @s mana.max
scoreboard players operation $temp mana.regenrate *= 3 __int__
scoreboard players operation $temp mana.regenrate /= 100 __int__
scoreboard players add $temp mana.regenrate 2
scoreboard players operation @s mana.regenrate *= $temp mana.regenrate
scoreboard players operation @s mana.regenrate *= 115 __int__
scoreboard players operation @s mana.regenrate /= 100 __int__
scoreboard players operation @s mana.regenrate /= 10 __int__
scoreboard players operation @s mana.regenrate /= 2 __int__
scoreboard players operation @s mana.regenrate > 1 __int__
execute if score $perc __variable__ matches ..-1 run scoreboard players set @s mana.cooldown 2
execute if score $perc __variable__ matches ..-21 run scoreboard players set @s mana.cooldown 3


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom