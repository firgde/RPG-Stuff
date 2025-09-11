# 最初にアイテム返却
    execute if items entity @s container.26 *[!custom_data~{ui:1b}] run item replace entity @a player.cursor from entity @s container.26

    function main:social/backpack/use/page/1_store/rec
    execute as @a run loot give @s mine 0 -59 0 mainhand
# リセット
    data remove block 0 -59 0 Items
# 音
    execute as @a at @s run playsound item.bundle.insert_fail
