tag @s add executing
execute as @e[tag=projectile.setup,distance=..5] run data modify entity @s Owner set from entity @e[tag=executing,limit=1,sort=nearest] UUID
tag @s remove executing


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom