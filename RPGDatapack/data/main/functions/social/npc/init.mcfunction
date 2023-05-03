# タグにIDを振る
    data modify entity @s Tags append from storage social: data.npc.id
# 取引
    data modify entity @s Offers.Recipes set from storage social: data.npc.Recipes
# リセット
    data remove storage social: data.npc
