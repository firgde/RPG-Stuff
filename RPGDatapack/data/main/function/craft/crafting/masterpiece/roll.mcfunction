# ((dex * 1.5 + acc + luk) / 6)%の確率で傑作に
    scoreboard players set #amplifier buffer 0
    scoreboard players operation #chance buffer = @a dex
    scoreboard players operation #chance buffer *= #3 const
    scoreboard players operation #chance buffer /= #2 const
    scoreboard players operation #amplifier buffer += #chance buffer
    scoreboard players operation #chance buffer += @a acc
    scoreboard players operation #chance buffer += @a luk
    scoreboard players operation #chance buffer /= #6 const
    execute store result score #random buffer run random value 0..100
    execute if score #chance buffer > #random buffer run function main:craft/crafting/masterpiece/success
# リセット
    scoreboard players reset #random buffer
    scoreboard players reset #chance buffer
