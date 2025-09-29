# インベントリからはみ出た、食べカスから効果を渡す
    #バフの強さ
    function items:use/consume/amplifier with entity @n[distance=..3,type=item] Item.components."minecraft:custom_data".buff.amplifier
    #バフの効果時間
    function items:use/consume/duration with entity @n[distance=..3,type=item] Item.components."minecraft:custom_data".buff.duration
    #HP・MPの回復量
    function items:use/consume/heal_amount with entity @n[distance=..3,type=item] Item.components."minecraft:custom_data".heal
# はみ出た食べカスは消す
    execute as @e[type=item,distance=..3] if items entity @s contents *[custom_data~{use_remainder:true}] run kill @s
