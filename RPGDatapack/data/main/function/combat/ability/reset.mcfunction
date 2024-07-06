# ｶﾁｯと通知
    playsound ui.button.click master @s ~ ~ ~ 1 2
# スコア諸々をリセット
    scoreboard players set @s ability_cooldown 0
# ストレージを42pxで置き換える
    data modify storage combat: data.hud.Cooldown set value '{"text":"\\uF82A\\uF828\\uF823"}'
