# インベントリにuse_remainderがあるなら普通にデータ取得
    execute as @a[limit=1] unless items entity @s inventory.* *[custom_data~{use_remainder:false}] unless items entity @s hotbar.* *[custom_data~{use_remainder:false}] run function items:use/consume/inventory
    clear @a[limit=1] *[custom_data~{use_remainder:true}]
# そうでないなら近くのitemエンティティから取得(インベントリ満杯時)
    execute as @a[limit=1] unless items entity @s inventory.* *[custom_data~{use_remainder:true}] unless items entity @s hotbar.* *[custom_data~{use_remainder:true}] at @s run function items:use/consume/thrown
# バフ付与
    execute as @a[limit=1] at @s run function status:buff/summon
