# どのGUIを開いているか
    execute if predicate asset:social/ui/holding_backpack run function asset:item/8997_backpack/use/tick
    execute if predicate asset:social/ui/holding_purse run function asset:item/8998_purse/use/tick
    execute if predicate asset:social/ui/holding_knowledge_book run function asset:item/8999_knowledge_book/use/tick
# 開かれなかったUIはkill
    execute positioned ~ ~1.2 ~ as @e[tag=summon,tag=minecartUI,distance=..1.5] if data entity @s {PortalCooldown:0} run function main:social/ui/kill
