tag @s add player.clicked
execute store result score @s player.click.id run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s player.click.id matches 0 store result score @s player.click.id run data get entity @s Inventory[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}].tag.CustomModelData


# Datapack by Baecon
#
# Contacts:
# Github: https://github.com/Baeconboy
# Discord: baecoom