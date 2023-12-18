scoreboard objectives add mana dummy
scoreboard objectives add mana.max dummy
scoreboard objectives add mana.percentage dummy
scoreboard objectives add mana.cooldown dummy
scoreboard objectives add mana.regenrate dummy
scoreboard objectives add mana.regenbonus dummy
scoreboard objectives add mana.percentage.prev dummy
execute unless score $default.mana.max __variable__ = $default.mana.max __variable__ run scoreboard players set $default.mana.max __variable__ 100


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom