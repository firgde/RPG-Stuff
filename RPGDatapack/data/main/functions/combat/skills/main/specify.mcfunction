#分岐
    data modify storage combat: Skills set from entity @s SelectedItem.tag.Customnbt.Skills
    execute if data storage combat: Skills.Main{id:"backwards_slash"} at @s run function main:combat/skills/main/backwards_slash
    execute if data storage combat: Skills.Main{id:"stab"} at @s run function main:combat/skills/main/stab
    execute if data storage combat: Skills.Main{id:"eating"} at @s run function main:combat/skills/main/eating
