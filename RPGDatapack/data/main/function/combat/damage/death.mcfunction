# 会話判定消す
    execute if entity @s[type=player,tag=in_dialogue] as @e[tag=npc.dialogue] run function main:social/npc/dialogue/unlock
# 戦闘経験値加算
    execute if entity @s[team=hostile] run scoreboard players operation @p add_pt = @s add_pt
    execute if entity @s[team=hostile] as @p run function status:combat/update_xp
# 戦闘中タイマーを減らす
    scoreboard players set @p combat_timer 20
# 体力リセット
    scoreboard players set @s hp_ratio 100
# kill
    execute if entity @s[type=player] run function status:update/
    playsound entity.arrow.hit_player master @p ~ ~ ~ 1 1
    kill @s
