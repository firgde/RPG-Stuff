# HPバーのデータ削除
    scoreboard players reset #prev hp_ratio
# HPバーを82pxで置き換える
    data modify storage combat: data.hud.hpBar set value '{"text":"\\uF82B\\uF829\\uF822"}'
    data modify storage combat: data.hud.Name set value '{"text":"\\uF82B\\uF829"}'
    execute if data storage combat: data.hud{progress:0} run data remove storage combat: data.hud.progress
    data remove storage combat: data.hud.ratio
# in_combatタグ削除
    tag @s remove in_combat
