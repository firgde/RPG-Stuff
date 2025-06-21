# 魔術攻撃
    tag @s add hurt.magic
# リセット
    scoreboard players reset @a dealtDamage
# ダメージを取得
    scoreboard players operation @s damage = @n[tag=magic] mag
# 属性を取得
    execute store result score #main_element buffer run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Type[0]
    execute store result score #side_element buffer run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Type[1]
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #side_element buffer
# デバフデータ取得
    execute store result score #main_element buff_amount run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[0].Amount
    execute store result score #main_element buff_timer run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[0].Timer
    execute store result score #side_element buff_amount run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[1].Amount
    execute store result score #side_element buff_timer run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[1].Timer
# 演出
    execute at @s positioned ~ ~1 ~ facing entity @a[limit=1] eyes positioned ^ ^ ^0.25 run function asset:particle/magic_hit
    particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
    particle crit ~ ~ ~ 0.1 0.3 0.1 0.5 25
    playsound block.amethyst_cluster.place hostile @a ~ ~ ~ 1 0.75
    execute if score #damage_type buffer matches 1 run playsound entity.firework_rocket.large_blast hostile @a ~ ~ ~ 0.5 1
    execute if score #damage_type buffer matches 3 run playsound block.grass.break hostile @a ~ ~ ~ 0.5 1.2
    execute if score #damage_type buffer matches 4 run playsound item.trident.hit hostile @a ~ ~ ~ 0.5 1
    execute if score #damage_type buffer matches 11 run playsound block.gravel.break hostile @a ~ ~ ~ 0.5 0.5
    execute if score #damage_type buffer matches 11 run playsound entity.firework_rocket.large_blast hostile @a ~ ~ ~ 1.5 0.5
# 貫通防止
    execute as @n[tag=magic,tag=!multiple_hit] run scoreboard players operation @s flyTimer = @s flyTime
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @a[distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @n[tag=atk_combo.init,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/wand/init
# からの計算
    function main:combat/damage/calc/
