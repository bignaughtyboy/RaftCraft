execute as @a[scores={ui_click=1..}] at @s store result score @s item_count run clear @s coal[custom_model_data={strings:["leaf"]}] 0

execute as @a[scores={ui_click=1..}] at @s if score @s item_count matches 2.. run give @s minecraft:coal[minecraft:custom_name={"bold":true,"italic":false,"text":"로프"}] 1
execute as @a[scores={ui_click=1..}] at @s if score @s item_count matches 2.. run clear @s minecraft:coal[minecraft:custom_model_data={strings:["leaf"]}] 2

execute as @a[scores={ui_click=1..}] at @s if score @s item_count matches 0..1 run playsound minecraft:entity.warden.heartbeat master @s
execute as @a[scores={ui_click=1..}] at @s run scoreboard players reset @s ui_click
scoreboard players reset @s item_count
scoreboard players enable @a ui_click
