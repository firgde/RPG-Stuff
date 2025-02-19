# 攻撃
    execute if predicate hud:attack run function hud:sidebar/attack
    execute unless predicate hud:attack run scoreboard players reset sidebar.attack
# 右クリック使用
    execute if predicate hud:use run function hud:sidebar/use
    execute unless predicate hud:use run scoreboard players reset sidebar.use
# 連撃
    execute if predicate hud:attack_combo run function hud:sidebar/attack_combo
    execute unless predicate hud:attack_combo run scoreboard players reset sidebar.attack_combo
# 消費
    execute if predicate hud:consume run function hud:sidebar/consume
    execute unless predicate hud:consume run scoreboard players reset sidebar.consume
# アイテム設置(クラフト)
    execute if predicate hud:crafting/place run function hud:sidebar/crafting/place
    execute unless predicate hud:crafting/place run scoreboard players reset sidebar.place.craft
# アイテム取り出し(クラフト)
    execute if predicate hud:crafting/pick run function hud:sidebar/crafting/pick
    execute unless predicate hud:crafting/pick run scoreboard players reset sidebar.pick.craft
# クラフト
    execute if predicate hud:crafting/craft run function hud:sidebar/crafting/craft
    execute unless predicate hud:crafting/craft run scoreboard players reset sidebar.craft
# エンチャント
    execute if predicate hud:enchant at @n[tag=enchanting,distance=..3,type=interaction] if items block ~ ~-1 ~ container.4 *[custom_data] run function hud:sidebar/enchant
    execute unless predicate hud:enchant run scoreboard players reset sidebar.enchant
# アイテム設置(修復)
    execute if predicate hud:repairing/place run function hud:sidebar/crafting/place
    execute unless predicate hud:crafting/place unless predicate hud:repairing/place run scoreboard players reset sidebar.place.craft
# アイテム取り出し(修復)
    execute if predicate hud:repairing/pick run function hud:sidebar/crafting/pick
    execute unless predicate hud:crafting/pick unless predicate hud:repairing/pick run scoreboard players reset sidebar.pick.craft
# 修復
    execute if predicate hud:repairing/repair run function hud:sidebar/repair
    execute unless predicate hud:repairing/repair run scoreboard players reset sidebar.repair
# アイテム設置(錬金術)
    execute if predicate hud:alchemy/place run function hud:sidebar/crafting/place
    execute unless predicate hud:crafting/place unless predicate hud:repairing/place unless predicate hud:alchemy/place run scoreboard players reset sidebar.place.craft
# アイテム取り出し(錬金術)
    execute if predicate hud:alchemy/pick run function hud:sidebar/crafting/pick
    execute unless predicate hud:crafting/pick unless predicate hud:repairing/pick unless predicate hud:alchemy/pick run scoreboard players reset sidebar.pick.craft
# 錬金術
    execute if predicate hud:alchemy/create run function hud:sidebar/create
    execute unless predicate hud:alchemy/create run scoreboard players reset sidebar.create
