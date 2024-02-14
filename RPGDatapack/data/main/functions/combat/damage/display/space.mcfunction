## (桁数) * 12 pixelずらす
# storageに12px分のネガティブスペース挿入
    data modify storage combat: data.Damage.space append value {"text":"\\uF804\\uF808"}
# 一桁減らす
    scoreboard players operation $damage buffer /= $10 const
# 桁数が残っているなら再帰
    execute unless score $damage buffer matches 0 run function main:combat/damage/display/space
