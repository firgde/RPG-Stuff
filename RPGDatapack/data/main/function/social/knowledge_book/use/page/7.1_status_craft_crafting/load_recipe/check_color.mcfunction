# 最初の色は例外で個別にデータ設定
    $execute if data storage craft:temp data.temp[$(row)][{Slot:$(Slot)b,color:0}] run data modify storage craft:color data.$(id).color set value 0
    $execute if data storage craft:temp data.temp[$(row)][{Slot:$(Slot)b,color:0}] run data modify storage craft:color data.$(id).occupied set value true
    $execute if data storage craft:temp data.temp[$(row)][{Slot:$(Slot)b,color:0}] run data modify storage craft:key data append from storage book: data.collect.item[{components:{"minecraft:custom_data":{id:$(id)}}}].components."minecraft:item_name"
    $execute if data storage craft:temp data.temp[$(row)][{Slot:$(Slot)b,color:0}] run data modify storage craft:key data[-1].id set value $(id)
# 既に使用した色ならストレージから色を持ってくる
    $execute if data storage craft:color data.$(id).occupied run data modify storage craft:temp data.temp[$(row)][{Slot:$(Slot)b}].color set from storage craft:color data.$(id).color

# 新しい種類のアイテムなら色を変えてストレージに保存
    $execute unless data storage craft:color data.$(id).occupied run scoreboard players operation #color buffer = #latest_color buffer
    $execute unless data storage craft:color data.$(id).occupied store result score #latest_color buffer store result storage craft:temp data.temp[$(row)][{Slot:$(Slot)b}].color int 1 store result storage craft:color data.$(id).color int 1 run scoreboard players add #color buffer 1
    $execute unless data storage craft:color data.$(id).occupied run scoreboard players operation #latest_color buffer = #color buffer
# キーも設定する
    $execute unless data storage craft:color data.$(id).occupied run data modify storage craft:key data append from storage book: data.collect.item[{components:{"minecraft:custom_data":{id:$(id)}}}].components."minecraft:item_name"
    $execute unless data storage craft:color data.$(id).occupied run data modify storage craft:key data[-1].id set value $(id)
    $execute unless data storage craft:color data.$(id).occupied run data modify storage craft:key data[-1].color set from storage color data.$(id).color

    $execute unless data storage craft:color data.$(id).occupied run data modify storage craft:color data.$(id).occupied set value true
