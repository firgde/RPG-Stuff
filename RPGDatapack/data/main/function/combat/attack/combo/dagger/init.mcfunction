# ダメージ減衰0%
    scoreboard players set @s dmg_reduction 10
# 持続時間0.5秒
    scoreboard players set @s combo_time 10
# 武器タグ付け直し
    data remove entity @s Tags
    tag @s add atk_combo
    tag @s add atk_combo.dagger
# Mobに合わせてサイズ変更
    function main:combat/attack/combo/resize
# initタグ削除
    tag @s[tag=atk_combo.init] remove atk_combo.init
