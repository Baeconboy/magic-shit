execute if entity @s[nbt={inGround:0b}] run function magic_shit:projectile/getcurrentmotion
execute if entity @s[nbt={inGround:1b},tag=!projectile.bouncy.stop] run function magic_shit:projectile/behavior/bouncy/onblockhit


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom