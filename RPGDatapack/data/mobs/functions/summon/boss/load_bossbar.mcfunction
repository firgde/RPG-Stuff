# ﾋﾟﾋﾟﾋﾟﾋﾟﾋﾟって音がしそうな感じにBossbarを増やす
    scoreboard players add $rec buffer 1
    execute store result bossbar health: value run scoreboard players operation @e[tag=boss,tag=spawn] hp += $bosshp buffer
# scheduleで再帰
    execute if score $rec buffer matches ..24 run schedule function mobs:summon/boss/load_bossbar 1t append
    execute if score $rec buffer matches 25.. run tag @e[tag=boss] remove spawn
    execute if score $rec buffer matches 25.. run scoreboard players reset $bosshp buffer
    execute if score $rec buffer matches 25.. run scoreboard players reset $rec buffer
