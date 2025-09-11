## slot 0~17をエリア情報で埋める
    #((sub_page - 1) * 18)個のオブジェクトをリストから削除
    data modify storage temp: data.explore set from storage book: data.explore
    scoreboard players operation #rec buffer = @s sub_page
    scoreboard players operation #rec buffer *= #18 const
    execute unless score @s sub_page matches 0 run function main:social/knowledge_book/use/page/5_status_explore/remove_data
    #ストレージの(sub_page * 18)番目を参照するようスコアを設定
    scoreboard players operation #index buffer = @s sub_page
    scoreboard players operation #index buffer *= #18 const
    #18回アイテム配置
    scoreboard players set #rec buffer 0
    function main:social/knowledge_book/use/page/5_status_explore/rec
# 矢印配置
    execute if score @s sub_page matches 1.. run item replace entity @s container.21 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:prev",item_name={"translate": "social.ui.knowledge_book.prev","italic": false}]
    execute if data storage temp: data.explore.area[18] run item replace entity @s container.23 with stick[custom_data={ui:1b,menu:"knowledge_book"},item_model="asset:next",item_name={"translate": "social.ui.knowledge_book.next","italic": false}]
