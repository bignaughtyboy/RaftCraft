execute as @e[tag=pbmain] at @s run tp @s ~ ~ ~10000
kill @e[tag=pbtest]
kill @e[tag=pbmain]
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell"}}]
