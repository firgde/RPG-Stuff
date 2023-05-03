# どのGUIを開いているか
    execute if predicate asset:social/ui/holding_purse run function asset:item/8998_purse/use/tick
    execute if predicate asset:social/ui/holding_quest_book run function asset:item/8999_quest_book/use/tick

# 開かれなかったUIはkill
    execute positioned ~ ~1.2 ~ as @e[tag=summon,tag=minecartUI,distance=..1.5] if data entity @s {PortalCooldown:0} run function main:social/ui/kill
# 視線の先にマーカーがあるか否か→なかったら閉じる
    execute at @s[tag=ui_opening] positioned ^ ^ ^15 unless entity @e[tag=ui_manager,distance=..0.5] positioned ^ ^ ^-15 run function main:social/ui/close
