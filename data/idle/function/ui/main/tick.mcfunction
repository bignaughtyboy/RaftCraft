execute as @a at @s if items entity @s weapon.mainhand coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] run dialog show @s idle:category
execute as @a at @s if items entity @s weapon.mainhand coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] run function idle:ui/main/item_detect with storage minecraft:ui
execute as @a at @s if items entity @s weapon.mainhand coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] run function idle:ui/main/item_recall with storage minecraft:ui

execute as @a at @s if items entity @s inventory.* coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] run clear @s coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}]
execute as @a at @s if items entity @s hotbar.* coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] run clear @s coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}]
execute as @a at @s unless items entity @s weapon.offhand coal[minecraft:item_model=air,count=1,tooltip_display={hide_tooltip:true}] run item replace entity @s weapon.offhand with coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] 1
