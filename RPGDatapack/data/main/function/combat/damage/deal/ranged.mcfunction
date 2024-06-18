# 遠距離攻撃
    tag @s add hurt.ranged
# 矢を特定
    execute at @s run tag @n[tag=playerArrow,distance=..5] add arrow.hit
# 属性を取得
    scoreboard players set #mainElement buffer 0
    scoreboard players set #sideElement buffer 0
    execute if entity @e[tag=arrow.hit,tag=arrow.fire] run scoreboard players set #mainElement buffer 1
    execute if entity @e[tag=arrow.hit,tag=arrow.ice] run scoreboard players set #mainElement buffer 2
    execute if entity @e[tag=arrow.hit,tag=arrow.wind] run scoreboard players set #mainElement buffer 3
    execute if entity @e[tag=arrow.hit,tag=arrow.thunder] run scoreboard players set #mainElement buffer 4
    execute if entity @e[tag=arrow.hit,tag=arrow.element.combine.fire] run scoreboard players set #sideElement buffer 1
    execute if entity @e[tag=arrow.hit,tag=arrow.element.combine.ice] run scoreboard players set #sideElement buffer 2
    execute if entity @e[tag=arrow.hit,tag=arrow.element.combine.wind] run scoreboard players set #sideElement buffer 3
    execute if entity @e[tag=arrow.hit,tag=arrow.element.combine.thunder] run scoreboard players set #sideElement buffer 4
    execute unless score #mainElement buffer matches 0 if score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #mainElement buffer
    execute if score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #sideElement buffer
# デバフデータ取得
    execute store result score #mainElement buff_amount run scoreboard players get @n[tag=arrow.hit] buff_amount
    execute store result score #mainElement buff_timer run scoreboard players get @n[tag=arrow.hit] buff_timer
# 一番近くの矢からデータ取得
    execute at @s store result score @s damage run scoreboard players get @n[tag=arrow.hit] dex
# 最大チャージなら連撃判定のinteraction召喚
    execute at @s if data entity @n[tag=arrow.hit] {crit:1b} unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @n[tag=atk_combo.init,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/bow/init
# からの計算式へ
    function main:combat/damage/calc/
# リセット
    scoreboard players reset @p dealtDamage
