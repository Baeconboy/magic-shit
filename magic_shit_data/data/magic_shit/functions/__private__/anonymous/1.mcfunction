summon marker ^ ^ ^1 {UUID:[I;0,0,0,0],Tags:["vector"]}
summon marker ^ ^ ^ {UUID:[I;0,0,0,1],Tags:["vector.anchor"]}
execute store result score @s vector.facing.x store result score @s vector.facing.y run scoreboard players set @s vector.facing.z 0
execute store result score @s vector.facing.x run data get entity @e[limit=1,tag=vector.anchor,type=minecraft:marker,distance=..1.5] Pos[0] 10000
execute store result score @s vector.facing.y run data get entity @e[limit=1,tag=vector.anchor,type=minecraft:marker,distance=..1.5] Pos[1] 10000
execute store result score @s vector.facing.z run data get entity @e[limit=1,tag=vector.anchor,type=minecraft:marker,distance=..1.5] Pos[2] 10000
execute as 00000000-0000-0000-0000-000000000000 store result score @s vector.facing.x run data get entity @s Pos[0] 10000
execute as 00000000-0000-0000-0000-000000000000 store result score @s vector.facing.y run data get entity @s Pos[1] 10000
execute as 00000000-0000-0000-0000-000000000000 store result score @s vector.facing.z run data get entity @s Pos[2] 10000
scoreboard players operation @s vector.facing.x -= @e[tag=vector,type=minecraft:marker,distance=..1.5] vector.facing.x
scoreboard players operation @s vector.facing.y -= @e[tag=vector,type=minecraft:marker,distance=..1.5] vector.facing.y
scoreboard players operation @s vector.facing.z -= @e[tag=vector,type=minecraft:marker,distance=..1.5] vector.facing.z
kill 00000000-0000-0000-0000-000000000000
kill 00000000-0000-0000-0000-000000000001


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom