
kill @e[tag=poi]
kill @e[tag=deco]
execute as @e[tag=tile] on passengers run kill @s
kill @e[tag=tile]
kill @e[tag=unit]
kill @e[tag=select]
kill @e[tag=fog]
kill @e[tag=playerhead]
kill @e[tag=structure]
kill @e[tag=village.border]




title @a actionbar "Generating..."

#: set board scale
$data modify storage board scale set value $(scale)
$scoreboard players set .x board $(scale)
$scoreboard players set .z board $(scale)

#: generate board
function board:board/innit/summon

#: set starting tiles
#execute as @e[tag=tile,sort=random,limit=4] run function board:board/innit/decor/set


execute positioned -10 0 43 as @n[tag=tile] run function board:board/innit/decor/set
execute positioned 55 0 43 as @n[tag=tile] run function board:board/innit/decor/set
execute positioned 55 0 -22 as @n[tag=tile] run function board:board/innit/decor/set
execute positioned -10 0 -22 as @n[tag=tile] run function board:board/innit/decor/set

execute positioned -10 0 43 as @n[tag=tile] run tag @s add startplayer1
execute positioned 55 0 43 as @n[tag=tile] run tag @s add startplayer2
execute positioned 55 0 -22 as @n[tag=tile] run tag @s add startplayer3
execute positioned -10 0 -22 as @n[tag=tile] run tag @s add startplayer4


#: set all other tile decor types
execute at @e[tag=tile,tag=spawn] as @n[tag=tile,tag=!spawn,tag=!decorated] at @s run function board:board/innit/decor/setall

execute as @e[tag=tile,tag=mountains] at @s run function board:board/innit/decor/mountains_to_ocean
execute as @e[tag=tile,tag=ocean] at @s run function board:board/innit/decor/oceans
execute as @e[tag=tile,tag=mountains] at @s run function board:board/innit/decor/mountains
execute as @e[tag=tile,tag=deep_ocean] at @s run function board:board/innit/decor/deep_oceans

title @a actionbar "Generating biomes..."


#: set decorations
execute as @e[tag=tile,tag=decorated] run function board:board/innit/decor/decor


title @a actionbar "Generating structures..."

#: set poi locations
execute as @e[tag=tile,tag=decorated,tag=!spawn] run function board:board/innit/poi/spawn

execute as @e[tag=tile,tag=village] at @s run function board:board/innit/poi/limit_villages

execute as @e[tag=tile,tag=poime] at @s run function board:board/innit/poi/decorate

#: set ruins spawn
execute as @e[tag=tile,tag=empty,tag=!forest,tag=!mountains,tag=!ocean] at @s run function board:board/innit/poi/ruins
#scoreboard players set @e[tag=tile] button.state 0


title @a actionbar "Generation complete!"
