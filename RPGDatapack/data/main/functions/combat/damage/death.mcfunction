#ﾀﾋんだんじゃないの～☆
    tellraw @a [{"translate":"debugging.maybehedied"},{"score":{"name": "@s","objective": "add_pt"}}]
    execute if entity @s[team=hostile] run scoreboard players operation @p[tag=attacker] add_pt = @s add_pt
    execute if entity @s[team=hostile] as @p[tag=attacker] run function status:_general/combat/update_xp
    scoreboard players operation @s[type=player] hp = @s[type=player] max_hp
    kill @s
    playsound entity.arrow.hit_player master @p[tag=attacker] ~ ~ ~ 1 1
#消す
    tag @s remove attacker
