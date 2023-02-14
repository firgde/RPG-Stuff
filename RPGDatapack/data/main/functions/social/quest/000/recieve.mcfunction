#ストレージに追加
    data modify storage social: data.Quest append value {}
    data modify storage social: data.Quest[-1].id set value 0
    data modify storage social: data.Quest[-1].Type set value "combat"
    data modify storage social: data.Quest[-1].Name set value '{"italic":false,"color":"red","underlined":true,"translate":"social.text.quest.000.name"}'
    data modify storage social: data.Quest[-1].Content set value '{"italic":false,"color":"white","underlined":false,"translate":"social.text.quest.000.content"}'
    data modify storage social: data.Quest[-1].Rewards set value '{"italic":false,"color":"white","underlined":false,"translate":"social.text.quest.000.rewards"}'
    data modify storage social: data.Quest[-1].CustomModelData set value 8000

    #通知
    tellraw @s [{"translate":"social.text.quest.recieve","color": "yellow","bold": true}]
