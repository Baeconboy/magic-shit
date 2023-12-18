scoreboard players set $cost __variable__ 100
execute store result score $success __variable__ run function magic_shit:mana/usemana
execute if score $success __variable__ matches 1.. anchored eyes positioned ^ ^ ^ run summon arrow ^ ^ ^ {Tags:["projectile.setup","projectile.bouncy","projectile.fragile"],damage:-0.00001d,Silent:1b}
function magic_shit:projectile/initializeprojectile


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom