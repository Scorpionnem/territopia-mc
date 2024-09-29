scoreboard players set #bool interaction 0
execute on target store result score #bool interaction if entity @s[tag=this]

execute if score #bool interaction matches 1 as @s[tag=lobby.button.start] at @s run function general:game/start
execute if score #bool interaction matches 1 as @s[tag=player1] at @s run function lobby:interaction/players/player1
execute if score #bool interaction matches 1 as @s[tag=player2] at @s run function lobby:interaction/players/player2
execute if score #bool interaction matches 1 as @s[tag=player3] at @s run function lobby:interaction/players/player3
execute if score #bool interaction matches 1 as @s[tag=player4] at @s run function lobby:interaction/players/player4
execute if score #bool interaction matches 1 as @s[tag=generation.setting] at @s run function lobby:interaction/settings/generation
execute if score #bool interaction matches 1 as @s[tag=size.setting] at @s run function lobby:interaction/settings/size

execute if score #bool interaction matches 1 run data remove entity @s interaction