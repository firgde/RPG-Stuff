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
    execute if predicate hud:enchant run function hud:sidebar/enchant
    execute unless predicate hud:enchant run scoreboard players reset sidebar.enchant
