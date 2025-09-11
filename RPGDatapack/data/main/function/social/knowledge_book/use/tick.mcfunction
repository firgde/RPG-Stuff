# チェストトロッコ
    execute positioned ~ ~1.2 ~ unless entity @e[tag=knowledge_book,tag=open,distance=..1] run function main:social/knowledge_book/use/summon
# Entityを一緒に移動
    execute if entity @s[tag=ui_opening] run tp @e[tag=knowledge_book,tag=minecartUI] ~ ~1.2 ~
# メニュー操作検知
    execute store success score @s[tag=ui_opening] pick if items entity @s player.cursor #main:social/ui/content[custom_data~{ui:1b,menu:"knowledge_book"}]
