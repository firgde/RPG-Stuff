# ドロップしたアイテムに対応したデータを代入
    execute at @a as @e[type=item,distance=..25] if items entity @s contents stick[custom_data~{dropped:1b}] run function main:collect/set_item with entity @s Item.components."minecraft:custom_data"
## 採掘のtick処理
    execute at @a as @e[type=armor_stand,tag=collect.mining_spot,distance=..150] at @s run function main:collect/mining/tick
