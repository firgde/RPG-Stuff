# 場所設定
    execute at @s as @e[tag=loc,limit=1,sort=nearest] at @s if data block ~ ~-1 ~ Items run data modify storage loc: location set from block ~ ~-1 ~ Items[0].tag.text
    execute store result score @s add_pt at @e[limit=1,tag=loc,sort=nearest] run data get block ~ ~-1 ~ Items[0].tag.score
# ディスカバリｨｨｨｨｨｲｲｲｲー！！！
    title @s subtitle {"storage": "loc:", "nbt":"location","color": "aqua"}
    title @s title {"text": "新エリア発見！","color": "gold"}
    tellraw @s [{"text": "新たなエリアを発見した！    ("}, {"text": "探索","color": "blue"}, {"text": "+","color": "white"}, {"score": {"name": "*","objective": "add_pt"},"color": "gold"}, {"text": ")"}]
# ステータスに加算
    scoreboard players operation @s xp_explore += @s add_pt
    function status:_general/explore/update_xp
# 二回発動しないようにアイテム削除
    execute at @s as @e[tag=loc,distance=..5] at @s run data remove block ~ ~-1 ~ Items
# advancementリセット
    advancement revoke @s only status:explore/discovered_place
