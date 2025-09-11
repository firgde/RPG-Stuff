# 先にアイテム返還
    execute unless items entity @a player.cursor * run item replace entity @a player.cursor from block 0 -59 0 container.0
# 最大ページ数計算
    execute store result score #pages buffer run data get storage player:backpack items
    execute store result score #max_page buffer run scoreboard players operation #pages buffer /= #18 const
    scoreboard players reset #pages
## slot 0~17を所持アイテムで埋める
    #((sub_page - 1) * 18)個のオブジェクトをリストから削除
    data modify storage temp: items set from storage player:backpack items
    scoreboard players operation #rec buffer = @s sub_page
    scoreboard players operation #rec buffer *= #18 const
    function main:social/backpack/use/page/2_withdraw/remove_data
    #ストレージの(sub_page * 18)番目を参照するようスコアを設定
    scoreboard players operation #index buffer = @s sub_page
    scoreboard players operation #index buffer *= #18 const
    #18回アイテム配置
    scoreboard players set #rec buffer 0
    function main:social/backpack/use/page/2_withdraw/rec
# 矢印配置
    execute if score @s sub_page matches 1.. run item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"backpack"},item_model="asset:prev",item_name={"translate": "social.ui.knowledge_book.prev","italic": false}]
    execute if data storage temp: items[0] run item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"backpack"},item_model="asset:next",item_name={"translate": "social.ui.knowledge_book.next","italic": false}]
