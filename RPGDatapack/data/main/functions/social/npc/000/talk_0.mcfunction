#次の会話
    scoreboard players operation @e[tag=npc.000,distance=..6,limit=1] dprogress < $5 const
    execute if score @e[tag=npc.000,distance=..6,limit=1] dprogress matches 0 run tellraw @s[advancements={main:social/quest/combat/000_test/display=false}] [{"text": "["},{"selector":"@e[tag=npc.000,distance=..6]"},{"text": "] "},{"translate": "social.text.npc.000"}]
    execute if score @e[tag=npc.000,distance=..6,limit=1] dprogress matches 5.. run tellraw @s [{"text": "["},{"selector":"@e[tag=npc.000,distance=..6]"},{"text": "] "},{"translate": "social.text.npc.000_4"}]
#分岐
    execute if entity @s[advancements={main:social/quest/combat/000_test/display=false}] if score @e[tag=npc.000,distance=..6,limit=1] dprogress matches 1 run function main:social/npc/000/talk_1
    execute if entity @s[advancements={main:social/quest/combat/000_test/display=false}] if score @e[tag=npc.000,distance=..6,limit=1] dprogress matches 2 run function main:social/npc/000/talk_2
    execute if entity @s[advancements={main:social/quest/combat/000_test/display=false}] if score @e[tag=npc.000,distance=..6,limit=1] dprogress matches 3 run function main:social/npc/000/talk_3
    execute if entity @s[advancements={main:social/quest/combat/000_test/display=false}] if score @e[tag=npc.000,distance=..6,limit=1] dprogress matches 4 run function main:social/npc/000/talk_4
#スコア加算
    scoreboard players add @e[tag=npc.000,distance=..6] dprogress 1
#Advancementリセット
    advancement revoke @s only main:social/talk/id000
