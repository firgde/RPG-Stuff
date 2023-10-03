# Ownerをプレイヤーに設定
    data modify entity @s Owner set from entity @p UUID
# 攻撃力と属性を設定
    #ダメージ減衰
    scoreboard players operation @s dex = @p dex
    scoreboard players operation @s dex *= $6 const
    scoreboard players operation @s dex /= $10 const
    #属性
    execute store result score @s main_element run data get entity @p SelectedItem.tag.Customnbt.Element.Type
    execute store result score @s side_element run data get entity @p Inventory[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}].tag.Customnbt.Element.Type
    execute unless score @s main_element matches 0 if score @s side_element matches 0 run scoreboard players operation @s element = @s main_element
    execute if score @s main_element matches 0 unless score @s side_element matches 0 run scoreboard players operation @s element = @s side_element
# 0 0 0を基準にして+0.05の位置に_vectorを召喚
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Tags:["vector"]}
# mov:に_vectorのPosを保存
    data modify storage mov: mov set from entity @e[tag=vector,limit=1] Pos
# 対象のEntityにmov:をそのままセット
    data modify entity @s Motion set from storage mov: mov
# リセット
    scoreboard players reset $xpower buffer
    scoreboard players reset $ypower buffer
    scoreboard players reset $zpower buffer
    data remove storage mov: mov
    kill @e[tag=vector]
