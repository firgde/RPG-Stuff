say open
#セットアップ
    execute at @s positioned ~ ~1.2 ~ as @e[tag=summon,tag=quest_book,distance=..0.01] run function main:social/ui/quest_book/init
    #判定用のマーカー
    summon marker ^ ^ ^15 {Tags:["ui_manager","quest_book"]}
#ui_openingタグ付与
    tag @s add ui_opening
#リセット
    advancement revoke @s only main:social/ui/quest_book/open
