kill @e[tag=ht1a]
execute as @e[tag=ho] at @s run tp @s ~ ~50 ~
kill @n[tag=anchor]
kill @e[tag=ho]
scoreboard players reset main hook_inter

data modify storage minecraft:hook wood set value 0
data modify storage minecraft:hook plastic set value 0
data modify storage minecraft:hook leaf set value 0
data modify storage minecraft:hook barrel set value 0
execute store result storage minecraft:hook wood int 1 as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s if entity @e[tag=wood,distance=..2]
execute store result storage minecraft:hook plastic int 1 as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s if entity @e[tag=plastic,distance=..2]
execute store result storage minecraft:hook leaf int 1 as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s if entity @e[tag=leaf,distance=..2]
execute store result storage minecraft:hook barrel int 1 as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s if entity @e[tag=barrel,distance=..2]

execute store result score wood hook_main run data get storage minecraft:hook wood
execute store result score plastic hook_main run data get storage minecraft:hook plastic
execute store result score leaf hook_main run data get storage minecraft:hook leaf
execute store result score barrel hook_main run data get storage minecraft:hook barrel

execute if score wood hook_main matches 1.. run execute as @n[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s run function idle:tool/hook/item/wood_give with storage minecraft:hook
execute if score plastic hook_main matches 1.. run execute as @n[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s run function idle:tool/hook/item/plastic_give with storage minecraft:hook
execute if score leaf hook_main matches 1.. run execute as @n[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s run function idle:tool/hook/item/leaf_give with storage minecraft:hook
execute if score barrel hook_main matches 1.. run execute as @n[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] at @s run function idle:tool/hook/item/barrel_give with storage minecraft:hook

execute as @e[tag=it] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}},distance=..1] run kill @s
scoreboard players add @n[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"플라스틱 고리"}}}}] hook_main 1
