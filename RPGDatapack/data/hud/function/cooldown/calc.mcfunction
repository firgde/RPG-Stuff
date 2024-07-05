# ストレージを一旦リセット
    data remove storage combat: data.hud.Cooldown
# 残り時間の割合を1/40単位で算出してストレージに入れる
    scoreboard players operation #cd_ratio buffer = @s current_ability_cooldown
    scoreboard players operation #cd_ratio buffer *= #40 const
    execute store result storage combat: data.hud.cd_progress int 1 run scoreboard players operation #cd_ratio buffer /= @s ability_cooldown
# hudにマクロで反映
    function hud:cooldown/display with storage combat: data.hud
# リセット
    scoreboard players reset #cd_ratio buffer
