execute as @e[tag=passive] run scoreboard players set @s sight_detect 0

execute as @e[tag=passive] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["passiveP"]}

execute as @e[tag=passive] at @s run tp @e[tag=passiveP,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=active,limit=1]

execute as @e[tag=passive] at @s store result score @s wa1 run data get entity @e[tag=passiveP,limit=1,sort=nearest] Rotation[0]

execute as @e[tag=passive] at @s run scoreboard players set @s wa2 180

execute as @e[tag=passive] at @s run scoreboard players operation @s wa2 += @s wa1

execute as @e[tag=active] at @s store result score @s wa3 run data get entity @s Rotation[0]

execute as @e[tag=active] at @s if score @s wa3 matches 0.. run scoreboard players set @s wa4 0

execute as @e[tag=active] at @s if score @s wa3 matches 0.. run scoreboard players operation @s wa4 += @s wa3

execute as @e[tag=active] at @s if score @s wa3 matches ..0 run scoreboard players set @s wa4 360

execute as @e[tag=active] at @s if score @s wa3 matches ..0 run scoreboard players operation @s wa4 += @s wa3

execute as @e[tag=passive] at @s run scoreboard players operation @s wa4 = @e[tag=active] wa4

execute as @e[tag=passive] at @s run scoreboard players operation @s wa4 -= @s wa2

execute as @e[tag=passive] at @s if score @s wa4 matches ..-315 run scoreboard players add @s sight_detect 1

execute as @e[tag=passive] at @s if score @s wa4 matches -35..35 run scoreboard players add @s sight_detect 1

execute as @e[tag=passive] at @s if score @s wa4 matches 315.. run scoreboard players add @s sight_detect 1

execute as @e[tag=passive] at @s store result score @s la1 run data get entity @e[tag=passiveP,limit=1,sort=nearest] Rotation[1]

execute as @e[tag=passiveP] at @s run kill @s

execute as @e[tag=passive] at @s run scoreboard players set @s la2 -1

execute as @e[tag=passive] at @s run scoreboard players operation @s la2 *= @s la1

execute as @e[tag=active] at @s store result score @s la3 run data get entity @s Rotation[1]

execute as @e[tag=passive] at @s run scoreboard players operation @s la3 = @e[tag=active] la3

execute as @e[tag=passive] at @s run scoreboard players operation @s la3 -= @s la2

execute as @e[tag=passive] at @s if score @s la3 matches -45..45 run scoreboard players add @s sight_detect 1

execute as @e[tag=passive] if score @s sight_detect matches 2 run effect give @s glowing 1 0 true

execute as @e[tag=passive] unless score @s sight_detect matches 2 run function idle:tool/hammer/remove
