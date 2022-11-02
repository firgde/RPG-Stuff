#話した回数リセット
    trigger dialogue set 0
    scoreboard players set @s dprogress 0
    scoreboard players enable @s dialogue
#「どうも」
    tellraw @s[advancements={main:social/quest/id000=false}] [{"text": "["},{"selector":"@e[tag=npc.000,distance=..10]"},{"text": "] "},{"translate": "social.text.npc.000"},{"text": "\uF822\uF828"},{"translate":"social.text.npc.continue","color": "gold","clickEvent": {"action": "run_command","value": "/trigger dialogue set 1"}}]
    tellraw @s[advancements={main:social/quest/id000=true}] [{"text": "["},{"selector":"@e[tag=npc.000,distance=..10]"},{"text": "] "},{"translate": "social.text.npc.000_4"},{"text": "\uF822\uF828"}]
#リセット
    advancement revoke @s only main:social/talk/id000/0
