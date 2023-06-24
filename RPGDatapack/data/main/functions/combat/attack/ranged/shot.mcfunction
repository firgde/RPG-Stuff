# 矢の初期処理
    #引き絞った時間が1秒以上ならタイマー補正
    scoreboard players operation @s bowCharge < $20 const
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ as @e[type=arrow,distance=..0.6] run function main:combat/attack/ranged/init
# 弓の耐久値減算
    execute if entity @s[gamemode=!creative] run function items:durability/remove_bow
# リセット
    scoreboard players reset @s bowCharge
    scoreboard players reset @s usedBow
