tag @a remove east
tag @a remove west
tag @a remove south
tag @a remove north

# 동
execute as @a at @s if entity @s[tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if entity @s[y_rotation=-135..-45] run tag @s add east

# 서
execute as @a at @s if entity @s[tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if entity @s[y_rotation=45..135] run tag @s add west

# 남
execute as @a at @s if entity @s[tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if entity @s[y_rotation=-45..45] run tag @s add south

# 북
execute as @a at @s if entity @s[tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if entity @s[y_rotation=135..180] run tag @s add north
execute as @a at @s if entity @s[tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if entity @s[y_rotation=-180..-135] run tag @s add north

execute as @a at @s if entity @s[tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] run tag @s add active

execute as @a at @s if entity @s[tag=east,tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] unless entity @e[tag=pbtest] run execute as @n[tag=p2] at @s positioned ^2.05 ^ ^ run function idle:tool/hammer/summon
execute as @a at @s if entity @s[tag=west,tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] unless entity @e[tag=pbtest] run execute as @n[tag=p2] at @s positioned ^-2.05 ^ ^ run function idle:tool/hammer/summon
execute as @a at @s if entity @s[tag=south,tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] unless entity @e[tag=pbtest] run execute as @n[tag=p2] at @s positioned ^ ^ ^2.05 run function idle:tool/hammer/summon
execute as @a at @s if entity @s[tag=north,tag=on_platform,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] unless entity @e[tag=pbtest] run execute as @n[tag=p2] at @s positioned ^ ^ ^-2.05 run function idle:tool/hammer/summon

execute as @a at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] run function idle:tool/hammer/remove
execute as @a at @s unless entity @s[tag=active,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] run tag @s remove active


execute as @e[tag=pbtest] at @s if entity @e[tag=p2,distance=..1] run function idle:tool/hammer/remove

execute as @a at @s if entity @s[scores={pbmade=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"bold":true,"italic":false,"text":"망치"}}}}] run execute as @n[tag=pbtest] at @s positioned ~ ~ ~ run function idle:boat/summon
execute as @a[scores={pbmade=1..}] at @s run scoreboard players reset @s pbmade