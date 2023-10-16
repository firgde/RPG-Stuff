# /random
    execute store result score $rng buffer run random roll -2147483648..2147483647
# 最大値セット
    scoreboard players operation $rng buffer %= $rngMax buffer
# リセット
    scoreboard players reset $rngMax buffer
