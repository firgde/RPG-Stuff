#0.5秒後に雷落ちます
    tag @s remove spawn
    execute at @s run function mobs:ai/2000_boss/thunder_attack/circle
    schedule function mobs:ai/2000_boss/thunder_attack/check 10t append
