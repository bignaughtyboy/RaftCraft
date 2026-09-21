execute if entity @n[tag=on_platform] run execute store result storage it_spawner dx double 1 run scoreboard players get x it_spawn
execute if entity @n[tag=on_platform] run execute store result storage it_spawner dz double 1 run scoreboard players get z it_spawn

execute if entity @n[tag=on_platform] run scoreboard players add delay it_spawn 1
execute if score delay it_spawn matches 50.. run execute store result score x it_spawn run random value -22..22
execute if score delay it_spawn matches 50.. run execute store result score z it_spawn run random value 40..70
execute if score delay it_spawn matches 50.. run execute store result score random it_spawn run random value 0..99
execute as @n[tag=on_platform] at @s if score delay it_spawn matches 50.. if score random it_spawn matches 0..44 run function idle:item/spawner/wood with storage minecraft:it_spawner
execute as @n[tag=on_platform] at @s if score delay it_spawn matches 50.. if score random it_spawn matches 45..74 run function idle:item/spawner/plastic with storage minecraft:it_spawner
execute as @n[tag=on_platform] at @s if score delay it_spawn matches 50.. if score random it_spawn matches 75..92 run function idle:item/spawner/leaf with storage minecraft:it_spawner
execute as @n[tag=on_platform] at @s if score delay it_spawn matches 50.. if score random it_spawn matches 93..99 run function idle:item/spawner/barrel with storage minecraft:it_spawner
execute if score delay it_spawn matches 50.. run scoreboard players reset delay it_spawn

execute as @e[tag=it_move] at @s run tp @s ~0.01 ~ ~-0.1

execute as @e[tag=it] at @s unless entity @a[distance=..70] run kill @s
