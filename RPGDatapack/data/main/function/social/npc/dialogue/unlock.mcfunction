# ジャンプ力と移動速度を戻す
    attribute @a[limit=1] movement_speed modifier remove movement_lock
    attribute @a[limit=1] jump_strength modifier remove jump_lock
# 敵対判定を戻す
    execute at @a as @e[team=hostile,distance=..50] run attribute @s follow_range modifier remove follow_lock
# タグ消し
    tag @a remove in_dialogue
# 最後に音
    execute at @a run playsound entity.arrow.hit_player neutral @a ~ ~ ~ 1 1
# テキスト動かす
    tellraw @a "\n\n\n\n\n\n\n\n\n"
# interaction消す
    kill @s
