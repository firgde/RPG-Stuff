# 音
    execute at @s run playsound block.shulker_box.close master @s ~ ~ ~ 1 1.1
# リセット
    scoreboard players reset #item_count buffer
    scoreboard players reset #modify_count buffer
    scoreboard players reset #max_count buffer
    scoreboard players reset #max_page buffer

    tag @s remove ui_opening.backpack
