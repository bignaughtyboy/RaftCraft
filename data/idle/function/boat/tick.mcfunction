function idle:boat/detect_players
function idle:tool/hammer/pbtest
function idle:item/spawner/main
execute as @n[tag=p2] at @s unless score @s dz matches 0 run function idle:boat/move_players with storage moving_platform:motion
execute as @n[tag=p2] run function idle:boat/platform_tick
function idle:boat/move_players with storage moving_platform:motions
function idle:tool/hammer/pbsee
function idle:tool/hook/main/tick