#スコアにスロットを代入
    execute store result score @s slot run data get entity @s SelectedItemSlot
#前のスロットと違うなら更新
    execute unless score @s slot = @s prevslot run function status:_general/get/update
#前のスロットに代入
    scoreboard players operation @s prevslot = @s slot
