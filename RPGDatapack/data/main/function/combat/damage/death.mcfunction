# 会話判定消す
    execute if entity @s[type=player,tag=in_dialogue] as @e[tag=npc.dialogue] run function main:social/npc/dialogue/unlock
# 知恵の書に追加
    execute if entity @s[team=hostile] run function main:social/knowledge_book/get_id
# 戦闘中タイマーを減らす
    scoreboard players set @a combat_timer 20
# 体力リセット
    scoreboard players set @s hp_ratio 100
# 死亡時の処理
    function #asset:mob/on_death
# kill
    execute if entity @s[type=player] run function status:update/
    playsound entity.arrow.hit_player master @a ~ ~ ~ 1 1
    kill @s
