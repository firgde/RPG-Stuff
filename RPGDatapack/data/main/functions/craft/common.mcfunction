#アイテムｶﾓｫｫｫｫﾝ
    summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},Motion: [0d,0.2d,0d],PickupDelay:20}
#こんな棒は作った覚えがない！
    data modify entity @e[type=item,limit=1,sort=nearest] Item set from block 0 -59 0 Items[0]
#ステータスに加算
    scoreboard players operation @p[advancements={main:craft/crafted=true}] add_pt = $craft add_pt
    scoreboard players operation @p[advancements={main:craft/crafted=true}] xp_craft += @p[advancements={main:craft/crafted=true}] add_pt
    tellraw @p[tag=crafted] [{"text": "アイテムをクラフトした！  ("},{"text": "手工","color": "yellow"},{"text": "+"},{"score":{"name": "*","objective": "add_pt"},"color": "gold"},{"text": ")"}]
    function status:_general/craft/update_xp
#音を止める
    #stopsound @a * entity.item_frame.rotate_item
#リセット
    scoreboard players reset @s buffer
    data remove storage item: Item
    data remove block ~ ~-1 ~ Items
