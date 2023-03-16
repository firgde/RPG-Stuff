#エンチャント処理
    data modify storage damage: Damage set from entity @p[tag=attacker,limit=1] SelectedItem.tag.Customnbt.Enchantments
    execute if data storage damage: Damage[{extra:1b}] run function main:combat/attack/enchantment/specify
#ダメージ計算
    execute as @p[tag=attacker] run function status:_general/get/update
    execute as @p[tag=attacker] if score @s dealtDamage matches 150.. run function main:combat/attack/crit
    scoreboard players operation @p[tag=attacker] atkBuffer = @p[tag=attacker] atk
    scoreboard players operation @p[tag=attacker] atkBuffer *= @p[tag=attacker] dealtDamage
    scoreboard players operation @p[tag=attacker] atkBuffer /= $100 const
#耐久を減らす
    execute as @p[tag=attacker] if entity @s[nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b,weapon:1b}}}},gamemode=!creative] unless data entity @s SelectedItem{tag:{Customnbt:{weaponType:"wand"}}} unless data entity @s SelectedItem{tag:{Customnbt:{weaponType:"bow"}}} run function main:combat/durability/remove
#最後にダメージ処理
    function main:combat/damage/general
