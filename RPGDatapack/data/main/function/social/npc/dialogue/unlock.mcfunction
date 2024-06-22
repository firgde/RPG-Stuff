# ジャンプ力と移動速度を戻す
    attribute @p generic.movement_speed modifier remove movement_lock
    attribute @p generic.jump_strength modifier remove jump_lock
# 敵対判定を戻す
    execute at @p as @e[team=hostile,distance=..50] run attribute @s generic.follow_range modifier remove follow_lock
# タグ消し
    tag @p remove in_dialogue
# interaction消す
    kill @s
