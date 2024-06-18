# this
    tag @s add this
# 全候補を実行者とし、thisより優先度が高いならhigherスコアに加算
    scoreboard players set @s higher 0
    execute as @e[tag=!this,tag=homingCandidate] if score @s homing_priority > @n[tag=this] homing_priority run scoreboard players add @n[tag=this] higher 1
    # tellraw @p [{"selector":"@s"},{"text": " -> "},{"score":{"name": "@s","objective": "homing_priority"}},{"text": ", "},{"score":{"name": "@s","objective": "higher"}}]
# リセット
    tag @s remove this
