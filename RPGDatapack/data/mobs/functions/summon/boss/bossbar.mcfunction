# ボスバー
    bossbar set health: color purple
    bossbar set health: visible true
    bossbar set health: players @p
    bossbar set health: name {"nbt":"Data.name","storage": "mob:"}
    execute store result bossbar health: max run data get storage mob: Data.status.hp
# ボスバーの演出のためにスコア取得&25で除算
    execute store result score $bosshp buffer run data get storage mob: Data.status.hp 0.04
    scoreboard players set $rec buffer 0
