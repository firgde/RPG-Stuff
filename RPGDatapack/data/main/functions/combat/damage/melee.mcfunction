#攻撃されました
    tag @s add hurt
#エンチャント処理
    data modify storage damage: Damage set from entity @a[tag=attacker,limit=1] SelectedItem.tag.Customnbt.Enchantments
    execute if data storage damage: Damage[{extra:1b}] run function main:combat/attack/enchantment/specify
#ダメージ計算
    execute as @a[tag=attacker] run function status:_general/get/update
    execute as @a[tag=attacker] if score @s dealtDamage matches 150.. run function main:combat/attack/crit
    scoreboard players operation @a[tag=attacker] atkBuffer = @a[tag=attacker] atk
    scoreboard players operation @a[tag=attacker] atkBuffer *= @a[tag=attacker] dealtDamage
    scoreboard players operation @a[tag=attacker] atkBuffer /= #100 const
#耐久を減らす
    execute as @a[tag=attacker] if entity @s[nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b,weapon:1b}}}},gamemode=!creative] run function main:combat/durability/remove
#最後にダメージ処理
    function main:combat/damage/general
