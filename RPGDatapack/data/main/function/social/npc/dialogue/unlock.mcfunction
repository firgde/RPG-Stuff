# ジャンプ力と移動速度を戻す
    attribute @p movement_speed modifier remove movement_lock
    attribute @p jump_strength modifier remove jump_lock
# 敵対判定を戻す
    execute at @p as @e[team=hostile,distance=..50] run attribute @s follow_range modifier remove follow_lock
# タグ消し
    tag @p remove in_dialogue
# 最後に音
    execute at @p run playsound entity.arrow.hit_player neutral @p ~ ~ ~ 1 1
# テキスト動かす
    tellraw @p "\n\n\n\n\n\n\n\n\n"
# interaction消す
    kill @s
