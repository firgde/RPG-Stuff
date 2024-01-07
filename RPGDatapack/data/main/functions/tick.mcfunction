# 魔術攻撃の処理
    execute as @e[type=item_display,tag=magic] at @s run function main:combat/attack/magic/tick/
# 遠距離攻撃の処理
    execute as @p run function main:combat/attack/ranged/tick/
# バフ処理
    execute as @e[tag=buff] run function status:buff/tick
# スキルのクールダウン
    execute as @p at @s if score @s currentSkillCooldown matches 1.. run function main:combat/skills/tick
# 連撃interactionの処理
    execute as @e[tag=atk_combo] run function main:combat/attack/combo/tick
# ステータスのtick処理
    execute as @p run function status:tick
# MPの処理
    #execute as @p unless score @s max_mp_base = @s max_mp unless score @s mp = @s max_mp run function status:int/tick
    execute as @p run function status:int/tick
# Mobスポナーのチェック
    execute at @p as @e[tag=spawner,type=!item,distance=..15] at @s run function mobs:summon/spawner/tick
# 自然スポーンするMob
    #execute as @p at @s if biome # main:field if score @s spawnTimer matches 1.. run function mobs:summon/tick
# HurtTime減算
    scoreboard players remove @e[team=hostile,scores={hurt_time=1..}] hurt_time 1
# AIを持ったMobの挙動
    execute as @e[team=hostile,tag=HasAI] at @s if entity @p[distance=..50,gamemode=!creative] run function mobs:ai/tick
# 採掘スポットの鉱石抽選
    execute as @e[tag=mining_spot] at @s if block ~ ~ ~ air if data entity @s {PortalCooldown:0} unless entity @p[distance=10..] run function main:collect/mining/regenerate
    #function main:collect/mining/tick
# ｴﾝﾁｬﾝﾄ台周りの仕様
    execute as @e[type=item_display,tag=enchanter] at @s if entity @p[distance=..5] run function main:craft/enchanting/tick
# 大釜周りの仕様
    execute at @p as @e[tag=alchemy.item,distance=..5] at @s run function main:craft/alchemy/tick
### (どれもプレイヤーが近くにいると動作するものなので統合できるかも)
# チェストトロッコ式GUI
    execute as @p at @s run function main:social/ui/tick
# HUDの処理
    function hud:tick

### 見れば見るほど汚い記述
