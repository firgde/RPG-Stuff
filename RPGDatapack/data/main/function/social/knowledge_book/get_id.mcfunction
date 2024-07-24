# ストレージにmob_id代入
    execute store result storage book:buffer data.mob.id int 1 run scoreboard players get @s mob_id
# モブが発見済みか確認
    function main:social/knowledge_book/check with storage book:buffer data.mob
# リセット
    data remove storage book:buffer data
