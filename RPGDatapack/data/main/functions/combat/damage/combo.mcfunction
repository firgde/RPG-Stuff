# this
    tag @s add this
# 攻撃力を持ってくる
    execute unless entity @p[advancements={main:combat/attack/combo/sword=false,main:combat/attack/combo/hammer=false,main:combat/attack/combo/dagger=false}] run scoreboard players operation @s damage = @p atk
    execute unless entity @p[advancements={main:combat/attack/combo/sword=false,main:combat/attack/combo/hammer=false,main:combat/attack/combo/dagger=false}] run tag @s add hurt.melee
    execute if entity @p[advancements={main:combat/attack/combo/wand=true}] run scoreboard players operation @s damage = @p mag
    execute if entity @p[advancements={main:combat/attack/combo/wand=true}] run tag @s add hurt.magic
# ダメージ減衰
    execute on passengers run scoreboard players operation @e[tag=this] damage *= @s dmg_reduction
    execute on passengers run scoreboard players operation @e[tag=this] damage /= #10 const
# クリティカル判定抽選
    execute as @p run function main:combat/attack/crit/
    scoreboard players operation @s damage *= @p dealtDamage
    scoreboard players operation @s damage /= #100 const
# デバフなしで属性取得
    execute store result score #mainElement buffer run data get entity @p SelectedItem.components.custom_data.Element.Type
    execute store result score #sideElement buffer run data get entity @p Inventory[{Slot:-106b,components:{custom_data:{offhandOnly:1b}}}].components.custom_data.Element.Type
    execute unless score #mainElement buffer matches 0 if score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #mainElement buffer
    execute if score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #sideElement buffer
    tag @s add hurt.combo
# ダメージ付与
    function main:combat/damage/calc/
# リセット
    scoreboard players reset @p dealtDamage
    tag @p remove attack.crit
    tag @s remove this
