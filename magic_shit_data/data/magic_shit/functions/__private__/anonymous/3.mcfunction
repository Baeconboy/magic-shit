execute as @e[scores={vector.facing.x=..-1}] at @s unless block ~-0.1 ~ ~ #magic_shit:nonsolid run tag @s add projectile.bouncy.x
execute as @e[scores={vector.facing.x=1..}] at @s unless block ~0.1 ~ ~ #magic_shit:nonsolid run tag @s add projectile.bounce.x
execute as @e[scores={vector.facing.y=..-1}] at @s unless block ~ ~-0.1 ~ #magic_shit:nonsolid run tag @s add projectile.bouncy.y
execute as @e[scores={vector.facing.y=1..}] at @s unless block ~ ~0.1 ~ #magic_shit:nonsolid run tag @s add projectile.bouncy.y
execute as @e[scores={vector.facing.z=..-1}] at @s unless block ~ ~ ~-0.1 #magic_shit:nonsolid run tag @s add projectile.bouncy.z
execute as @e[scores={vector.facing.z=1..}] at @s unless block ~ ~ ~0.1 #magic_shit:nonsolid run tag @s add projectile.bouncy.z
execute if score @s vector.facing.x matches -1000..1000 run tag @s remove projectile.bouncy.x
execute if score @s vector.facing.y matches -3000..3000 run tag @s remove projectile.bouncy.y
execute if score @s vector.facing.z matches -1000..1000 run tag @s remove projectile.bouncy.z
execute if entity @s[tag=!projectile.bouncy.x, tag=!projectile.bouncy.y, tag=!projectile.bouncy.z] run tag @s add projectile.bouncy.stop
scoreboard players set __logic__0 __variable__ 0
execute if entity @s[tag=projectile.bouncy.x] run scoreboard players set __logic__0 __variable__ 1
execute unless score __logic__0 __variable__ matches 1 if entity @s[tag=projectile.bouncy.y] run scoreboard players set __logic__0 __variable__ 1
execute unless score __logic__0 __variable__ matches 1 if entity @s[tag=projectile.bouncy.z] run scoreboard players set __logic__0 __variable__ 1
execute if score __logic__0 __variable__ matches 1 run function magic_shit:__private__/if_else/1
execute if entity @s[tag=!projectile.bouncy.stop, tag=!projectile.bouncy.stop.x, tag=projectile.bouncy.x] store result entity @s Motion[0] double -0.00009 run scoreboard players get @s vector.facing.x
execute if entity @s[tag=!projectile.bouncy.stop, tag=!projectile.bouncy.stop.x, tag=!projectile.bouncy.x] store result entity @s Motion[0] double 0.00009 run scoreboard players get @s vector.facing.x
execute if entity @s[tag=!projectile.bouncy.stop, tag=!projectile.bouncy.stop.y, tag=projectile.bouncy.y] store result entity @s Motion[1] double -0.00009 run scoreboard players get @s vector.facing.y
execute if entity @s[tag=!projectile.bouncy.stop, tag=!projectile.bouncy.stop.y, tag=!projectile.bouncy.y] store result entity @s Motion[1] double 0.00009 run scoreboard players get @s vector.facing.y
execute if entity @s[tag=!projectile.bouncy.stop, tag=!projectile.bouncy.stop.z, tag=projectile.bouncy.z] store result entity @s Motion[2] double -0.00009 run scoreboard players get @s vector.facing.z
execute if entity @s[tag=!projectile.bouncy.stop, tag=!projectile.bouncy.stop.z, tag=!projectile.bouncy.z] store result entity @s Motion[2] double 0.00009 run scoreboard players get @s vector.facing.z
execute if score @s projectile.bouncy.counter = $default.projectile.bouncy.counter __variable__ run tag @s add projectile.bouncy.stop
tag @s[tag=projectile.bouncy.x] remove projectile.bouncy.x
tag @s[tag=projectile.bouncy.y] remove projectile.bouncy.y
tag @s[tag=projectile.bouncy.z] remove projectile.bouncy.z


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom