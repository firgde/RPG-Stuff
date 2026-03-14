# bodyにアイテム入れる
    execute unless items entity @s armor.body *[custom_data~{motion:true}] run item replace entity @s armor.body with stick[equippable={slot:"body",equip_sound:"intentionally_empty"},enchantments={vanishing_curse:1},custom_data={motion:true}]
# エンチャント
    $item modify entity @s armor.body [{function:set_custom_data,tag:{x_negative:$(negative_0),y_negative:$(negative_1),z_negative:$(negative_2)}},{function:set_enchantments,enchantments:{"lib:motion/x_1":$(1_0),"lib:motion/x_01":$(01_0),"lib:motion/x_0001":$(0001_0),"lib:motion/y_1":$(1_1),"lib:motion/y_01":$(01_1),"lib:motion/y_0001":$(0001_1),"lib:motion/z_1":$(1_2),"lib:motion/z_01":$(01_2),"lib:motion/z_0001":$(0001_2)}}]
