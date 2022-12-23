#経験値加算
    scoreboard players operation @s xp_combat += @s add_pt
    scoreboard players operation #lvlbuffer lvl_combat = @s lvl_combat
    scoreboard players operation #xpbuffer buffer = @s xp_combat
    scoreboard players operation #xpbuffer buffer *= #100 const
    execute store result score @s lvl_combat run scoreboard players operation #xpbuffer buffer /= #10000 const
    scoreboard players operation @s lvl_combat < #100 const
    execute if score @s lvl_combat > #lvlbuffer lvl_combat run function status:_general/combat/level_up
#リセット
    scoreboard players reset #lvlbuffer buffer
    scoreboard players reset #xpbuffer buffer
