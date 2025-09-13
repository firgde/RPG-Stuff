# 色のリスト
    data modify storage craft:temp data.color set value ["white","aqua","green","yellow","light_purple","blue","dark_green","dark_aqua","gold"]
# レシピのデータを持ってくる
    $data modify storage craft:temp data.temp set from storage book: data.craft.crafting[$(index)].pattern[0]
# 再帰処理の初期化(マクロに渡すデータ群)
    execute store result storage craft:temp rec byte 1 run scoreboard players set #rec_ buffer 0
    data modify storage craft:temp row set value 0
    data modify storage craft:temp column set value 0
    $data modify storage craft:temp index set value $(index)
    execute store result storage craft:temp color_type int 1 run scoreboard players set #color buffer 0
    data modify storage craft:temp data.temp[0][0].color set value 0
# リストの要素をテキストコンポーネントに変換
    function main:social/knowledge_book/use/page/7.1_status_craft_crafting/load_recipe/rec with storage craft:temp
    data modify storage craft:temp data.result_0 set from storage craft:temp data.temp[0]
    data modify storage craft:temp data.result_1 set from storage craft:temp data.temp[1]
    data modify storage craft:temp data.result_2 set from storage craft:temp data.temp[2]
# 色と文字列の紐づけ
    data modify storage craft:key result set from storage craft:key data

    execute if data storage craft:key result[0] run scoreboard players set #has_data_0 buffer 1
    execute if data storage craft:key result[1] run scoreboard players set #has_data_1 buffer 1
    execute if data storage craft:key result[2] run scoreboard players set #has_data_2 buffer 1
    execute if data storage craft:key result[3] run scoreboard players set #has_data_3 buffer 1
    execute if data storage craft:key result[4] run scoreboard players set #has_data_4 buffer 1
    execute if data storage craft:key result[5] run scoreboard players set #has_data_5 buffer 1
    execute if data storage craft:key result[6] run scoreboard players set #has_data_6 buffer 1
    execute if data storage craft:key result[7] run scoreboard players set #has_data_7 buffer 1
    execute if data storage craft:key result[8] run scoreboard players set #has_data_8 buffer 1
# コンポーネントをloreに代入
    item replace block 0 -59 0 container.1 with stick[custom_data={ui:1b,menu:"knowledge_book"}]
    execute as @a[limit=1] run item modify block 0 -59 0 container.1 [{"function":"set_lore","entity":"this","lore":[{"storage":"craft:temp","nbt":"data.result_0","interpret":true,"italic":false},{"nbt":"data.result_1","storage":"craft:temp","interpret":true,"italic":false},{"nbt":"data.result_2","storage":"craft:temp","interpret":true,"italic":false}],"mode":"replace_all"},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[0]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_0"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[1]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_1"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[2]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_2"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[3]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_3"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[4]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_4"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[5]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_5"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[6]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_6"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[7]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_7"},"score":"buffer"},"range":1}]},{"function":"set_lore","entity":"this","lore":[{"nbt":"result[8]","storage":"craft:key","interpret":true,"italic":false}],"mode":"append","conditions":[{"condition":"value_check","value":{"type":"score","target":{"type":"fixed","name":"#has_data_8"},"score":"buffer"},"range":1}]}]
    $item replace entity @s container.$(slot) from block 0 -59 0 container.1
# リセット
    data remove storage craft:color data
    data remove storage craft:temp data
    data remove storage craft:temp rec
    data remove storage craft:temp row
    data remove storage craft:temp column
    data remove storage craft:temp color_type
    data remove storage craft:temp index
    data remove storage craft:key data
    data remove storage craft:key result
    scoreboard players reset #rec_ buffer
    scoreboard players reset #color buffer
    scoreboard players reset #latest_color buffer
    scoreboard players reset #has_data_0 buffer
    scoreboard players reset #has_data_1 buffer
    scoreboard players reset #has_data_2 buffer
    scoreboard players reset #has_data_3 buffer
    scoreboard players reset #has_data_4 buffer
    scoreboard players reset #has_data_5 buffer
    scoreboard players reset #has_data_6 buffer
    scoreboard players reset #has_data_7 buffer
    scoreboard players reset #has_data_8 buffer
    item replace block 0 -59 0 container.1 with air
