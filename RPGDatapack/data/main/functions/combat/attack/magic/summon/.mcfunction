# 耐久減らす
    execute if entity @s[gamemode=!creative,nbt={SelectedItem:{components:{"minecraft:custom_data":{Unbreakable:0b}}}}] run function items:durability/remove
# クールダウン更新
    execute store result score #timeused buffer run time query gametime
    execute store result storage combat: data.magic[0].CoolDown int 1 run scoreboard players get #timeused buffer
    item modify entity @s weapon.mainhand main:magic/get_cooldown
# 本体となるitem_display召喚
    execute summon item_display run tag @s add magic.summon
    execute as @e[type=item_display,tag=magic.summon] run function main:combat/attack/magic/summon/init
