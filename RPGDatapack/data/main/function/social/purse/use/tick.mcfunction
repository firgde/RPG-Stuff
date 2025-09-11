# チェストトロッコ
    execute positioned ~ ~1.2 ~ unless entity @e[tag=purse,tag=open,distance=..1] run function main:social/purse/use/summon
# Entityを一緒に移動
    execute if entity @s[tag=ui_opening] at @s run tp @e[tag=purse,tag=minecartUI] ~ ~1.2 ~
# メニュー操作検知
    execute store success score @s[tag=ui_opening] pick if items entity @s player.cursor stick[custom_data~{ui:1b,menu:"purse"}]
# 開いていないならスコアリセット
    execute unless entity @s[tag=ui_opening] run function main:social/purse/use/reset_score
