# 魔術攻撃を受けました
    tag @p add hurt.magic
    scoreboard players operation @p damage = @s mag
# 属性取得
    scoreboard players operation #mainElement buffer = @s main_element
    scoreboard players operation #sideElement buffer = @s side_element
    scoreboard players operation #damageType buffer = @s element
