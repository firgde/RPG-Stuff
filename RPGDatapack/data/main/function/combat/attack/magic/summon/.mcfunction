# 耐久減らす
    execute if entity @s[gamemode=!creative] unless items entity @s weapon.mainhand *[custom_data~{Unbreakable:1b}] run function items:durability/remove
# クールダウン更新
    execute store result score #time_used buffer run time query gametime
    execute store result storage combat: data.magic[0].CoolDown int 1 run scoreboard players get #time_used buffer
    item modify entity @s weapon.mainhand main:magic/get_cooldown
# 本体となるitem_display召喚
    execute summon item_display run tag @s add magic.summon
    execute as @n[type=item_display,tag=magic.summon] run function main:combat/attack/magic/summon/init
