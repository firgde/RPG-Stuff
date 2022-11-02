#ついでに移動距離も計算
    #全部足す
    scoreboard players operation @s mov_dis /= #10000 const
    scoreboard players operation @s xp_explore -= @s mov_dis
    scoreboard players set @s mov_dis 0
    scoreboard players operation @s mov_dis += @s mov_walk
    scoreboard players operation @s mov_dis += @s mov_run
    scoreboard players operation @s mov_dis += @s mov_sneak
    scoreboard players operation @s mov_dis += @s mov_fly
    scoreboard players operation @s mov_dis += @s mov_swim
    scoreboard players operation @s mov_dis += @s mov_walk_water
    scoreboard players operation @s mov_dis += @s mov_walk_underwater
    #からの経験値の更新
    scoreboard players operation @s buffer = @s mov_dis
    scoreboard players operation @s buffer /= #10000 const
    scoreboard players operation @s mov_point = @s buffer
    scoreboard players operation @s xp_explore += @s mov_point
#5で割り切れるならレベルアップ処理
    scoreboard players operation @s buffer = @s lvl_explore
    scoreboard players operation @s lvl_explore = @s xp_explore
    scoreboard players operation @s lvl_explore /= #5 const
    execute if score @s lvl_explore > @s buffer run function status:_general/explore/level_up
