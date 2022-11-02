#検知ｨ！
    scoreboard players set @s usedRod 0
    scoreboard players set @s sideSuccess 0
#(デバッグ)
    execute if score @s sideSkillCooldown matches 1.. run tellraw @s [{"translate":"combat.text.skill.cooldown","color": "red"}]
#発動するスキルで分岐
    execute unless score @s sideSkillCooldown matches 1.. run function main:combat/skills/side/divide
#スキル成功の場合は表示
    execute if score @s sideSuccess matches 1 at @s run summon area_effect_cloud ~ ~ ~ {Tags:["skillName"],Duration:1}
    data modify entity @e[tag=skillName,limit=1] CustomName set from entity @s SelectedItem.tag.Customnbt.Skills.Side.display.Name
    execute if score @s sideSuccess matches 1 run tellraw @s [{"translate": "combat.text.skill.pre"},{"selector": "@e[tag=skillName]"},{"translate": "combat.text.skill.end"}]
#リセット
    data remove storage combat: Skills
    advancement revoke @s only main:combat/skills/side
