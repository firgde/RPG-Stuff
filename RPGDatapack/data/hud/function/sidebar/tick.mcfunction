# 攻撃
    execute if predicate hud:attack run function hud:sidebar/attack
    execute unless predicate hud:attack run scoreboard players reset sidebar.attack
# 魔術&遠距離攻撃
    execute if predicate hud:use run function hud:sidebar/use
    execute unless predicate hud:use run scoreboard players reset sidebar.use
# 連撃
    execute if predicate hud:attack_combo run function hud:sidebar/attack_combo
    execute unless predicate hud:attack_combo run scoreboard players reset sidebar.attack_combo
# リセット
    execute unless predicate hud:all run scoreboard objectives setdisplay sidebar
