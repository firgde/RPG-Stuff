# 持続時間0.75秒
    scoreboard players set @s combo_time 15
# 武器タグ付け直し
    data remove entity @s Tags
    tag @s add atk_combo
    tag @s add atk_combo.bow
# Mobに合わせてサイズ変更
    function main:combat/attack/combo/resize
# initタグ削除
    tag @s[tag=atk_combo.init] remove atk_combo.init
