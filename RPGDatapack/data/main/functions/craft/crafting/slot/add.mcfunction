# 個数がスタック最大値に一致しない場合のみ設置
    #最大スタック数が設定されている場合
    execute store result score #max_stack_size buffer run data get entity @e[limit=1,sort=nearest,tag=slot,type=item_display] item.components."minecraft:max_stack_size"
    #設定されていない場合(=0が取得された場合)
    execute if score #max_stack_size buffer matches 0 if items entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents stick run scoreboard players set #max_stack_size buffer 64
    execute if score #max_stack_size buffer matches 0 if items entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents #main:unstackable run scoreboard players set #max_stack_size buffer 1
    #個数が最大数に一致するか確認
    data modify storage buffer: data.item_count set from entity @e[limit=1,sort=nearest,tag=slot,type=item_display] item.count
    execute store success score #success_1 buffer store result storage craft:buffer data.item_count int 1 run scoreboard players get #max_stack_size buffer
# 個数に余裕があるなら追加
    execute if score #success_1 buffer matches 1 run item modify entity @p weapon.mainhand [{"function":"set_count","count":-1,"add":true}]
    execute if score #success_1 buffer matches 1 run item modify entity @e[limit=1,sort=nearest,tag=slot,type=item_display] contents [{"function":"set_count","count":1,"add":true}]
