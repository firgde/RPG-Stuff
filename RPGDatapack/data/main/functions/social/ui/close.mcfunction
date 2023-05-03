# 中にui関係ないアイテムが入ってるなら返却
    execute as @e[tag=minecartUI,distance=..5] unless data entity @s Items[0].tag.ui run function main:social/ui/return/
# 動いたor視点ずれた⇒UIとじた
    tag @s remove ui_opening
    execute positioned ~ ~1.2 ~ as @e[tag=minecartUI,distance=..5] run function main:social/ui/kill
    execute positioned ~ ~1.2 ~ run kill @e[tag=ui_manager,distance=..20]
# 仮ストレージのリセット
    data remove storage temp: data
