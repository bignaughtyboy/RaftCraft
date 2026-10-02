$loot replace entity @s weapon.mainhand loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_count",count:$(count)},{function:"minecraft:set_components",components:$(components)}]}]}]}
data remove storage minecraft:ui id

clear @a coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}]
item replace entity @a weapon.offhand with coal[minecraft:item_model=air,tooltip_display={hide_tooltip:true}] 1
