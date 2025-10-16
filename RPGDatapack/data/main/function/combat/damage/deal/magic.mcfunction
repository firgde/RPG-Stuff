# 魔術攻撃
    tag @s add hurt.magic
# リセット
    scoreboard players reset @a[limit=1] dealtDamage
# ダメージを取得
    scoreboard players operation @s damage = @n[tag=magic] mag
# 属性を取得
    execute store result score #main_element buffer run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Type[0]
    execute store result score #side_element buffer run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Type[1]
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #side_element buffer
# デバフデータ取得
    execute store result score #main_element buff_amount run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[0].Amount
    execute store result score #main_element buff_timer_element run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[0].Timer
    execute store result score #side_element buff_amount run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[1].Amount
    execute store result score #side_element buff_timer_element run data get entity @n[tag=magic] item.components."minecraft:custom_data".Element.Debuff[1].Timer
# 貫通防止
    execute as @n[tag=magic,tag=!multiple_hit] run scoreboard players operation @s time_flied = @s max_flying_time
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @a[limit=1,distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @n[tag=atk_combo.init,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/wand/init
# からの計算
    function main:combat/damage/calc/
