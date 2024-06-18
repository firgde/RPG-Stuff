# this
    tag @s add this
# 自分をoriginに設定したaec召喚
    summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["buff","buff.init"]}
# データ設定
    data modify entity @n[tag=buff.init] Owner set from entity @s UUID
    execute as @n[tag=buff.init,type=area_effect_cloud] run function status:buff/set_data
# リセット
    tag @s remove this
