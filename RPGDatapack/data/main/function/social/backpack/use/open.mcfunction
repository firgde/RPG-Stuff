# セットアップ
    execute at @s positioned ~ ~1.2 ~ as @e[tag=summon,tag=backpack,distance=..0.01] run function main:social/backpack/use/init
    #判定用の頭装備
    execute if items entity @s armor.head *[custom_data~{armor:1b}] run function main:social/ui/open
    execute unless items entity @s armor.head *[custom_data~{armor:1b}] run item replace entity @s armor.head with stick[custom_data={onUI:1b}]
# ui_openingタグ付与
    tag @s add ui_opening
    tag @s add ui_opening.backpack
# リセット
    advancement revoke @s only main:social/backpack/open
# 音
    execute as @a at @s run playsound block.shulker_box.open master @s ~ ~ ~ 1 1.2
