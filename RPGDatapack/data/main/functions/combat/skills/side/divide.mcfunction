#分岐
    data modify storage combat: Skills set from entity @s SelectedItem.tag.Customnbt.Skills
    execute if data storage combat: Skills.Main{id:"backwards_slash"} if data entity @s {OnGround:1b} at @s run function main:combat/skills/side/backstep
