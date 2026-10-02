execute as @a at @s if items entity @s weapon.mainhand * run data modify storage minecraft:ui id set from entity @s equipment.offhand.id
execute as @a at @s if items entity @s weapon.mainhand * run data modify storage minecraft:ui components set from entity @s equipment.offhand.components
execute as @a at @s if items entity @s weapon.mainhand * run data modify storage minecraft:ui count set from entity @s equipment.offhand.count
