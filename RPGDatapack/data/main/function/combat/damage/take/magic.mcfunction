# 魔術攻撃を受けました
    tag @a[limit=1] add hurt.magic
    scoreboard players operation @a[limit=1] damage = @s mag
# 属性取得
    scoreboard players operation #main_element buffer = @s main_element
    scoreboard players operation #side_element buffer = @s side_element
    scoreboard players operation #damage_type buffer = @s element
