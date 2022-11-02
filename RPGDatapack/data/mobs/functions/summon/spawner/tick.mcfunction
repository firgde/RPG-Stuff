#スポーンする間隔
    scoreboard players add @s spawnTimer 1
    execute if score @s spawnTimer > @s spawnDelay run function mobs:summon/spawner/specify
    execute if score @s spawnTimer > @s spawnDelay run scoreboard players set @s spawnTimer 0
