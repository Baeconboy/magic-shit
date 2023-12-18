scoreboard objectives add vector.facing.x dummy
scoreboard objectives add vector.facing.y dummy
scoreboard objectives add vector.facing.z dummy
scoreboard objectives add projectile.bouncy.counter dummy
execute unless score $default.projectile.bouncy.counter __variable__ = $default.projectile.bouncy.counter __variable__ run scoreboard players set $default.projectile.bouncy.counter __variable__ 10


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom