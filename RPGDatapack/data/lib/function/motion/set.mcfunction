# 値が存在しないなら0へ
    execute unless score #velocity_x buffer matches -2147483648..2147483647 run scoreboard players set #velocity_x buffer 0
    execute unless score #velocity_y buffer matches -2147483648..2147483647 run scoreboard players set #velocity_y buffer 0
    execute unless score #velocity_z buffer matches -2147483648..2147483647 run scoreboard players set #velocity_z buffer 0

# x方向のローカル座標を絶対座標へ+ベクトル分解
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^1 ^ ^ {Tags:["vector"]}
    data modify storage lib:motion data.pos set from entity @n[tag=vector] Pos
    execute store result score #local_x_x buffer run data get storage lib:motion data.pos[0] 10000
    execute store result score #local_x_y buffer run data get storage lib:motion data.pos[1] 10000
    execute store result score #local_x_z buffer run data get storage lib:motion data.pos[2] 10000
    #±の誤差を正す (-0.000などを-1ではなく0に)
    scoreboard players set #is_negative_x buffer 0
    scoreboard players set #is_negative_y buffer 0
    scoreboard players set #is_negative_z buffer 0
    execute store success score #is_negative_x buffer if score #local_x_x buffer matches ..-1 store result score #local_x_x buffer run data get storage lib:motion data.pos[0] -10000
    execute store success score #is_negative_y buffer if score #local_x_y buffer matches ..-1 store result score #local_x_y buffer run data get storage lib:motion data.pos[1] -10000
    execute store success score #is_negative_z buffer if score #local_x_z buffer matches ..-1 store result score #local_x_z buffer run data get storage lib:motion data.pos[2] -10000
    execute if score #is_negative_x buffer matches 1 run scoreboard players operation #local_x_x buffer *= #-1 const
    execute if score #is_negative_y buffer matches 1 run scoreboard players operation #local_x_y buffer *= #-1 const
    execute if score #is_negative_z buffer matches 1 run scoreboard players operation #local_x_z buffer *= #-1 const

# y方向のローカル座標を絶対座標へ+ベクトル分解
    execute positioned 0.0 0.0 0.0 run tp @n[tag=vector] ^ ^1 ^
    data modify storage lib:motion data.pos set from entity @n[tag=vector] Pos
    execute store result score #local_y_x buffer run data get storage lib:motion data.pos[0] 10000
    execute store result score #local_y_y buffer run data get storage lib:motion data.pos[1] 10000
    execute store result score #local_y_z buffer run data get storage lib:motion data.pos[2] 10000
    #±の誤差を正す (-0.000などを-1ではなく0に)
    scoreboard players set #is_negative_x buffer 0
    scoreboard players set #is_negative_y buffer 0
    scoreboard players set #is_negative_z buffer 0
    execute store success score #is_negative_x buffer if score #local_y_x buffer matches ..-1 store result score #local_y_x buffer run data get storage lib:motion data.pos[0] -10000
    execute store success score #is_negative_y buffer if score #local_y_y buffer matches ..-1 store result score #local_y_y buffer run data get storage lib:motion data.pos[1] -10000
    execute store success score #is_negative_z buffer if score #local_y_z buffer matches ..-1 store result score #local_y_z buffer run data get storage lib:motion data.pos[2] -10000
    execute if score #is_negative_x buffer matches 1 run scoreboard players operation #local_y_x buffer *= #-1 const
    execute if score #is_negative_y buffer matches 1 run scoreboard players operation #local_y_y buffer *= #-1 const
    execute if score #is_negative_z buffer matches 1 run scoreboard players operation #local_y_z buffer *= #-1 const

# z方向のローカル座標を絶対座標へ+ベクトル分解
    execute positioned 0.0 0.0 0.0 run tp @n[tag=vector] ^ ^ ^1
    data modify storage lib:motion data.pos set from entity @n[tag=vector] Pos
    execute store result score #local_z_x buffer run data get storage lib:motion data.pos[0] 10000
    execute store result score #local_z_y buffer run data get storage lib:motion data.pos[1] 10000
    execute store result score #local_z_z buffer run data get storage lib:motion data.pos[2] 10000
    #±の誤差を正す (-0.000などを-1ではなく0に)
    scoreboard players set #is_negative_x buffer 0
    scoreboard players set #is_negative_y buffer 0
    scoreboard players set #is_negative_z buffer 0
    execute store success score #is_negative_x buffer if score #local_z_x buffer matches ..-1 store result score #local_z_x buffer run data get storage lib:motion data.pos[0] -10000
    execute store success score #is_negative_y buffer if score #local_z_y buffer matches ..-1 store result score #local_z_y buffer run data get storage lib:motion data.pos[1] -10000
    execute store success score #is_negative_z buffer if score #local_z_z buffer matches ..-1 store result score #local_z_z buffer run data get storage lib:motion data.pos[2] -10000
    execute if score #is_negative_x buffer matches 1 run scoreboard players operation #local_z_x buffer *= #-1 const
    execute if score #is_negative_y buffer matches 1 run scoreboard players operation #local_z_y buffer *= #-1 const
    execute if score #is_negative_z buffer matches 1 run scoreboard players operation #local_z_z buffer *= #-1 const

# 内積計算
    scoreboard players operation #local_x_x buffer *= #velocity_x buffer
    scoreboard players operation #local_x_x buffer /= #10000 const
    scoreboard players operation #local_x_y buffer *= #velocity_y buffer
    scoreboard players operation #local_x_y buffer /= #10000 const
    scoreboard players operation #local_x_z buffer *= #velocity_z buffer
    scoreboard players operation #local_x_z buffer /= #10000 const
    scoreboard players operation #local_x_x buffer += #local_x_y buffer
    scoreboard players operation #local_x_x buffer += #local_x_z buffer

    scoreboard players operation #local_y_x buffer *= #velocity_x buffer
    scoreboard players operation #local_y_x buffer /= #10000 const
    scoreboard players operation #local_y_y buffer *= #velocity_y buffer
    scoreboard players operation #local_y_y buffer /= #10000 const
    scoreboard players operation #local_y_z buffer *= #velocity_z buffer
    scoreboard players operation #local_y_z buffer /= #10000 const
    scoreboard players operation #local_y_x buffer += #local_y_y buffer
    scoreboard players operation #local_y_x buffer += #local_y_z buffer

    scoreboard players operation #local_z_x buffer *= #velocity_x buffer
    scoreboard players operation #local_z_x buffer /= #10000 const
    scoreboard players operation #local_z_y buffer *= #velocity_y buffer
    scoreboard players operation #local_z_y buffer /= #10000 const
    scoreboard players operation #local_z_z buffer *= #velocity_z buffer
    scoreboard players operation #local_z_z buffer /= #10000 const
    scoreboard players operation #local_z_x buffer += #local_z_y buffer
    scoreboard players operation #local_z_x buffer += #local_z_z buffer

# 負のエンチャントレベルは存在しないので符号を別に保存
    data modify storage lib:motion data.enchantment.level.negative_0 set value false
    data modify storage lib:motion data.enchantment.level.negative_1 set value false
    data modify storage lib:motion data.enchantment.level.negative_2 set value false
    execute if score #local_x_x buffer matches ..-1 run data modify storage lib:motion data.enchantment.level.negative_0 set value true
    execute if score #local_x_x buffer matches ..-1 run scoreboard players operation #local_x_x buffer *= #-1 const
    execute if score #local_y_x buffer matches ..-1 run data modify storage lib:motion data.enchantment.level.negative_1 set value true
    execute if score #local_y_x buffer matches ..-1 run scoreboard players operation #local_y_x buffer *= #-1 const
    execute if score #local_z_x buffer matches ..-1 run data modify storage lib:motion data.enchantment.level.negative_2 set value true
    execute if score #local_z_x buffer matches ..-1 run scoreboard players operation #local_z_x buffer *= #-1 const

# マクロに渡す値
    execute store result storage lib:motion data.enchantment.level.1_0 int 0.0001 run scoreboard players operation #local_x_x_ buffer = #local_x_x buffer
    execute store result storage lib:motion data.enchantment.level.01_0 int 0.01 run scoreboard players operation #local_x_x_ buffer %= #10000 const
    execute store result storage lib:motion data.enchantment.level.0001_0 int 1 run scoreboard players operation #local_x_x_ buffer %= #100 const

    execute store result storage lib:motion data.enchantment.level.1_1 int 0.0001 run scoreboard players operation #local_y_x_ buffer = #local_y_x buffer
    execute store result storage lib:motion data.enchantment.level.01_1 int 0.01 run scoreboard players operation #local_y_x buffer %= #10000 const
    execute store result storage lib:motion data.enchantment.level.0001_1 int 1 run scoreboard players operation #local_y_x buffer %= #100 const

    execute store result storage lib:motion data.enchantment.level.1_2 int 0.0001 run scoreboard players operation #local_z_x_ buffer = #local_z_x buffer
    execute store result storage lib:motion data.enchantment.level.01_2 int 0.01 run scoreboard players operation #local_z_x_ buffer %= #10000 const
    execute store result storage lib:motion data.enchantment.level.0001_2 int 1 run scoreboard players operation #local_z_x_ buffer %= #100 const

    function lib:motion/enchantment with storage lib:motion data.enchantment.level
# リセット
    scoreboard players reset #velocity_x buffer
    scoreboard players reset #velocity_y buffer
    scoreboard players reset #velocity_z buffer
    scoreboard players reset #local_x_x buffer
    scoreboard players reset #local_x_y buffer
    scoreboard players reset #local_x_z buffer
    scoreboard players reset #local_x_x_ buffer
    scoreboard players reset #local_y_x buffer
    scoreboard players reset #local_y_y buffer
    scoreboard players reset #local_y_z buffer
    scoreboard players reset #local_y_x_ buffer
    scoreboard players reset #local_z_x buffer
    scoreboard players reset #local_z_y buffer
    scoreboard players reset #local_z_z buffer
    scoreboard players reset #local_z_x_ buffer
    data remove storage lib:motion data
    kill @e[tag=vector]
