# ストレージのリストからタグを持ってくる
    data modify entity @s Tags append from storage combat: data.magic[0].Tags.Speed[0]
# ストレージから0番目を削除
    data remove storage combat: data.magic[0].Tags.Speed[0]
# 要素が残っているなら再帰
    execute if data storage combat: data.magic[0].Tags.Speed[0] run function main:combat/attack/magic/summon/set_speed
