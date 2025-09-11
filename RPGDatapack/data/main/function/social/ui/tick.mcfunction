# どのGUIを開いているか
    execute if predicate main:social/ui/holding_backpack run function main:social/backpack/use/tick
    execute if predicate main:social/ui/holding_purse run function main:social/purse/use/tick
    execute if predicate main:social/ui/holding_knowledge_book run function main:social/knowledge_book/use/tick
# 開かれなかったUIはkill
    execute positioned ~ ~1.2 ~ as @e[tag=summon,tag=minecartUI,distance=..1.5] if data entity @s {PortalCooldown:0} run function main:social/ui/kill
