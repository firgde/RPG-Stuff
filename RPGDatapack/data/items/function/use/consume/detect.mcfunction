# インベントリにuse_remainderがあるなら普通にデータ取得
    execute as @p unless items entity @s inventory.* *[custom_data~{use_remainder:false}] unless items entity @s hotbar.* *[custom_data~{use_remainder:false}] run function items:use/consume/specify with entity @s Inventory[{components:{"minecraft:custom_data":{use_remainder:true}}}].components."minecraft:custom_data"
    clear @p *[custom_data~{use_remainder:true}]
# そうでないなら近くのitemエンティティから取得(インベントリ満杯時)
    execute as @p unless items entity @s inventory.* *[custom_data~{use_remainder:true}] unless items entity @s hotbar.* *[custom_data~{use_remainder:true}] at @s run function items:use/consume/specify_thrown
