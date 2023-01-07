#0.5秒後に雷落ちます
    tag @s remove spawn
    execute at @s run function mobs:ai/2000_boss/thunder_attack/circle
    execute at @s run particle crit ~ ~ ~ 0 5 0 0 100 normal
    schedule function mobs:ai/2000_boss/thunder_attack/check 10t append
