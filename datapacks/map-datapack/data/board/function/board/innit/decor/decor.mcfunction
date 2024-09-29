execute as @s[tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,tag=decorated] run tag @s add plains


execute as @s[tag=decorated,tag=plains] at @s run summon item_display ~ ~ ~ {Tags:["temp","deco","deco"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":1}},brightness:{sky:15,block:15}}

execute as @s[tag=decorated,tag=forest] at @s run summon item_display ~ ~ ~ {Tags:["temp","deco"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":2}},brightness:{sky:15,block:15}}

execute as @s[tag=decorated,tag=mountains] at @s run summon item_display ~ ~ ~ {Tags:["temp","deco"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":3}},brightness:{sky:15,block:15}}

execute as @s[tag=decorated,tag=ocean] at @s run summon item_display ~ ~ ~ {Tags:["temp","deco"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":4}},brightness:{sky:15,block:15}}

execute as @s[tag=decorated,tag=deep_ocean] at @s run summon item_display ~ ~ ~ {Tags:["temp","deco"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":5}},brightness:{sky:15,block:15}}


tag @s add fulldeco
ride @n[type=item_display,tag=temp] mount @s
tag @n[type=item_display,tag=temp] remove temp