# ストレージを一旦リセット
    data remove storage combat: data.hud.Cooldown
# 残り体力の割合を2.5%単位で算出
    scoreboard players operation #cdratio buffer = @s current_ability_cooldown
    scoreboard players operation #cdratio buffer *= #40 const
    execute store result score #rec buffer run scoreboard players operation #cdratio buffer /= @s ability_cooldown
    scoreboard players operation #cdratio buffer = #rec buffer
# 割合の分だけストレージにバーを追加
    function hud:cooldown/rec
# 減った分を追加
    scoreboard players set #40 buffer 40
    execute store result score #rec buffer run scoreboard players operation #40 buffer -= #cdratio buffer
    function hud:cooldown/rec_removed
# リセット
    scoreboard players reset #40 buffer
    scoreboard players reset #rec buffer
    scoreboard players reset #cdratio buffer
