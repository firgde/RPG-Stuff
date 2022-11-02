#ダメージ処理のために無敵に
    effect give @a resistance 1000000 255 true
#餓死しないために満腹度回復
    effect give @a saturation 1000000 255 true
#体力の表示
    execute as @a run function main:update_health
#魔法攻撃の処理
    execute as @e[type=armor_stand,tag=magic] at @s run function main:combat/attack/magic/common
#デバフ処理
    execute as @e[tag=debuffed] run function main:combat/debuff/tick/
#スキルのクールダウン
    execute as @a at @s if score @s skillCooldown matches 1.. run function main:combat/skills/main/remove_cooldown
    execute as @a at @s if score @s sideSkillCooldown matches 1.. run function main:combat/skills/side/remove_cooldown
#手に持っているアイテム
    execute as @a run function status:_general/get/slot
#食べたタイマー
    execute as @a[tag=!eating] run scoreboard players set @s foodTimer 0
#MPの処理
    #execute as @a unless score @s max_mp_base = @s max_mp unless score @s mp = @s max_mp run function status:int/tick
    execute as @a run function status:int/tick
#Mobスポナーのチェック
    execute at @a as @e[tag=spawner,type=!item,distance=..15] at @s run function mobs:summon/spawner/tick
#採掘スポットの鉱石抽選
    execute as @e[tag=mining_spot] at @s if block ~ ~ ~ air if data entity @s {PortalCooldown:0} unless entity @a[distance=10..] run function main:collect/mining/regenerate
    #function main:collect/mining/tick
#ｴﾝﾁｬﾝﾄ台周りの仕様
    execute as @e[type=item_frame,tag=enchanter] at @s run function main:craft/enchanting/display_item
###(どれもプレイヤーが近くにいると動作するものなので統合できるかも)
