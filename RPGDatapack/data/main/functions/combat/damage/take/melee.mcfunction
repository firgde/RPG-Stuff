# 属性を取得
    execute store result score #mainElement buffer run data get entity @s HandItems[0].tag.Customnbt.Element.Type
    execute store result score #sideElement buffer run data get entity @s HandItems[1].tag.Customnbt.Element.Type
    # execute if data entity @s HandItems[0].tag.Customnbt.Element.Type store result score #damageType buffer run data get entity @s HandItems[0].tag.Customnbt.Element.Type
    # execute unless data entity @s HandItems[0].tag.Customnbt.Element.Type if data entity @s HandItems[1].tag{Customnbt:{offhandOnly:1b}} store result score #damageType buffer run data get entity @s HandItems[1].tag.Customnbt.Element.Type
# 近接攻撃を受けました
    tag @p add hurt.melee
    scoreboard players operation @p damage = @s atk
