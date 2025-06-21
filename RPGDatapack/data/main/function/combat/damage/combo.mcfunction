# this
    tag @s add this
# 攻撃力を持ってくる
    execute unless entity @a[advancements={main:combat/attack/combo/sword=false,main:combat/attack/combo/hammer=false,main:combat/attack/combo/dagger=false}] run scoreboard players operation @s damage = @a atk
    execute unless entity @a[advancements={main:combat/attack/combo/sword=false,main:combat/attack/combo/hammer=false,main:combat/attack/combo/dagger=false}] run tag @s add hurt.melee
    execute if entity @a[advancements={main:combat/attack/combo/wand=true}] run scoreboard players operation @s damage = @a mag
    execute if entity @a[advancements={main:combat/attack/combo/wand=true}] run tag @s add hurt.magic
# ダメージ減衰
    execute on passengers run scoreboard players operation @e[tag=this] damage *= @s dmg_reduction
    execute on passengers run scoreboard players operation @e[tag=this] damage /= #10 const
# クリティカル判定抽選
    execute as @a run function main:combat/attack/crit/
    scoreboard players operation @s damage *= @a dealtDamage
    scoreboard players operation @s damage /= #100 const
# デバフなしで属性取得
    execute store result score #main_element buffer run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #side_element buffer run data get entity @a[limit=1] equipment{offhand:{components:{"minecraft:custom_data":{offhandOnly:1b}}}}.offhand.components."minecraft:custom_data".Element.Type
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #side_element buffer
    tag @s add hurt.combo
# ダメージ付与
    function main:combat/damage/calc/
# リセット
    scoreboard players reset @a dealtDamage
    tag @a remove attack.crit
    tag @s remove this
