# /random
$execute store result score $rng buffer run random value $(Min)..$(Max)
# リセット
    scoreboard players reset $rngMax buffer
    data remove storage rng: data
