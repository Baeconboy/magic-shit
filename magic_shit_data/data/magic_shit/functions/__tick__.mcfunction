execute as @a[scores={__die__=1}] at @s run function magic_shit:__private__/player_die/on_death
execute as @e[type=player,scores={__die__=2..}] at @s run function magic_shit:__private__/player_die/on_respawn
execute store result score $temp __variable__ run random value 0..500 minecraft:blocks/budding_amethyst
execute as @e[scores={mana.max=0..}] if score @s player.click matches 1.. run function magic_shit:__private__/if_else/3
function magic_shit:mana/main
function magic_shit:projectile/main
function magic_shit:spells/main
scoreboard players set @e player.click 0
tag @e[tag=player.clicked] remove player.clicked


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom