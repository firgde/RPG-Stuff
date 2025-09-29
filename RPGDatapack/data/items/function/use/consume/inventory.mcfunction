# 食べカスから効果を渡す
    #バフの強さ
    function items:use/consume/amplifier with entity @s Inventory[{components:{"minecraft:custom_data":{use_remainder:true}}}].components."minecraft:custom_data".buff.amplifier
    #バフの効果時間
    function items:use/consume/duration with entity @s Inventory[{components:{"minecraft:custom_data":{use_remainder:true}}}].components."minecraft:custom_data".buff.duration
    #HP・MPの回復量
    function items:use/consume/heal_amount with entity @s Inventory[{components:{"minecraft:custom_data":{use_remainder:true}}}].components."minecraft:custom_data".heal
