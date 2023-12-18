execute store result storage magic_shit:data player.click_id double 0.001 run scoreboard players get @s player.click.id
execute store result score @s player.click.wand run data get storage magic_shit:data player.click_id
scoreboard players operation $temp __variable__ = @s player.click.wand
scoreboard players operation $temp __variable__ *= 1000 __int__
scoreboard players operation @s player.click.spell = @s player.click.id
scoreboard players operation @s player.click.spell -= $temp __variable__
scoreboard players operation $spell __variable__ = @s player.click.spell
execute store result storage magic_shit:__storage__ switch_key int 1 run scoreboard players get $spell __variable__
function magic_shit:__private__/switch_case/1/select with storage magic_shit:__storage__


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom