# 素材/採掘レベルを特定
    execute if items entity @s weapon.mainhand *[custom_data~{toolType:"pickaxe"}] run item modify entity @s weapon.mainhand asset:collect/mining/break_op/tiers
    execute if items entity @s weapon.mainhand *[custom_data~{toolType:"axe"}] run item modify entity @s weapon.mainhand asset:collect/woodcutting/break_op/tiers
