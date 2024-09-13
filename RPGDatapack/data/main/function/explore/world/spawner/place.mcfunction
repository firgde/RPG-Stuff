# スポナートロッコを載せたitem_displayを設置
    execute align xyz run summon item_display ~0.5 ~0.3 ~0.5 {Tags:["spawner","spawner.summon"],Passengers:[{id:"spawner_minecart",SpawnCount:1,CustomDisplayTile:1b,DisplayState:{Name:"air"}}]}
    execute as @n[type=item_display,tag=spawner.summon,distance=..1] on passengers run function main:explore/world/spawner/set_data
    tag @n[type=item_display,tag=spawner.summon,distance=..1] remove spawner.summon
