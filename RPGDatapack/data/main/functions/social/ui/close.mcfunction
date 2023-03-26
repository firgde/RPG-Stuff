#動いたor視点ずれた⇒UIとじた
    tag @s remove ui_opening
    execute positioned ~ ~1.2 ~ as @e[tag=minecartUI,distance=..5] run function main:social/ui/kill
    execute positioned ~ ~1.2 ~ run kill @e[tag=ui_manager,distance=..20]
#仮ストレージのリセット
    data remove storage temp: data
