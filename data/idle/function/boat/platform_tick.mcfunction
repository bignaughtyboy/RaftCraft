execute unless entity @s[tag=platform_init] run execute store result score @s px run data get entity @s Pos[0] 1000
execute unless entity @s[tag=platform_init] run execute store result score @s pz run data get entity @s Pos[2] 1000
execute unless entity @s[tag=platform_init] run tag @s add platform_init
execute unless entity @s[tag=platform_init] run return 0

# 현재 위치 저장 (1/1000 블록 단위)
execute store result score @s dx run data get entity @s Pos[0] 1000
execute store result score @s dz run data get entity @s Pos[2] 1000

# 이동량 계산
scoreboard players operation @s dx -= @s px
scoreboard players operation @s dz -= @s pz

execute unless score @s dz matches 0 run function idle:boat/apply_motion

# 현재 위치를 이전 위치로 저장
execute store result score @s px run data get entity @s Pos[0] 1000
execute store result score @s pz run data get entity @s Pos[2] 1000