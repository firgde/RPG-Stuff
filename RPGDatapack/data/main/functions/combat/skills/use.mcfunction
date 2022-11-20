#検知ｨ！
    scoreboard players set @s usedRod 0
#(デバッグ)
    execute if score @s sideSuccess matches 1 at @s run summon area_effect_cloud ~ ~ ~ {Tags:["skillName"],Duration:1}
    data modify entity @e[tag=skillName,limit=1] CustomName set from entity @s SelectedItem.tag.Customnbt.Skills.Main.display.Name
    execute unless score @s skillCooldown matches 1.. run tellraw @s [{"translate": "combat.text.skill.pre"},{"selector": "@e[tag=skillName]"},{"translate": "combat.text.skill.end"}]
    execute if score @s skillCooldown matches 1.. run tellraw @s [{"translate":"combat.text.skill.cooldown","color": "red"}]
#発動するスキルで分岐
    execute unless score @s skillCooldown matches 1.. run function main:combat/skills/main/specify
#リセット
    data remove storage combat: Skills
    advancement revoke @s only main:combat/skills/main
