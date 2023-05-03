# 初期化
    xp set @s 40 levels
    xp set @s 0 points
    scoreboard players operation $mpbuffer buffer = @s mp
# ポイント
    scoreboard players operation $lv% buffer *= $2^24 const
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 128 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 64 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 32 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 16 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 8 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 4 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 2 points
    scoreboard players operation $lv% buffer *= $2 const
    execute if score $lv% buffer matches ..-1 run xp add @s 1 points
# レベル
    xp set @s 0 levels
    scoreboard players operation $mpbuffer buffer *= $2^20 const
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 1024 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 512 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 256 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 128 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 64 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 32 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 16 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 8 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 4 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 2 levels
    scoreboard players operation $mpbuffer buffer *= $2 const
    execute if score $mpbuffer buffer matches ..-1 run xp add @s 1 levels
