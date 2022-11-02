#スキルのクールダウン時間の設定
    scoreboard players set @s skillCooldown 60
#回復量
    execute store result score @s healAmount run data get entity @s SelectedItem.tag.Customnbt.HealAmountHP
    function main:combat/heal/hp
#演出
    particle item bread ^ ^1.5 ^0.1 0.1 0.1 0.1 0.1 10
    playsound entity.player.burp master @a[distance=..3] ~ ~ ~
    playsound entity.generic.eat master @a[distance=..3] ~ ~ ~
#耐久減らす
    execute if entity @s[nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b}}}},gamemode=!creative] run function main:combat/durability/remove
