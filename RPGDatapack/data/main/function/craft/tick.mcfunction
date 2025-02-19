# ｴﾝﾁｬﾝﾄ台周りの仕様
    execute as @e[type=item_display,tag=enchanter,distance=..6] at @s run function main:craft/enchanting/tick
# 大釜周りの仕様
    execute as @e[tag=alchemy.item] at @s align xyz if entity @p[distance=..6] run function main:craft/alchemy/tick
