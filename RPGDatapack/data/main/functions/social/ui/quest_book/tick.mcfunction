#チェストトロッコ
    execute positioned ~ ~1.2 ~ unless entity @e[tag=quest_book,tag=open,distance=..1] run function main:social/ui/quest_book/summon
#落下中ならEntityを一緒に移動
    execute if data entity @s[tag=ui_opening] {OnGround:0b} at @s run function main:social/ui/quest_book/tp
#メニュー操作検知
    execute store success score @s[tag=ui_opening] pick run clear @s #main:social/ui/content{ui:1b,menu:"quest_book"}
