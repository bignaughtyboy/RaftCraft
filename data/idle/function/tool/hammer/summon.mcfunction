summon shulker ~ ~ ~ {NoAI:1b,AttachFace:0b,Tags:["pbtest","passive"],attributes:[{id:"minecraft:scale",base:2}]}
summon armor_stand ~ 104.065 ~ {Invisible:1b,NoGravity:1b,Small:1b,Marker:1b,Tags:["pbmain"]}
effect give @e[tag=pbtest] invisibility infinite 1 true
effect give @e[tag=pbtest] water_breathing infinite 1 true
ride @n[tag=pbtest] mount @n[tag=pbmain]