# スロット3→5→7のエンチャントアイテムから、候補を持ってくる
    function main:craft/enchanting/pool/check_enchantments with storage craft:enchanting temp
# 再帰
    execute store result storage craft:enchanting temp.Slot int 1 run scoreboard players add #rec buffer 2
    execute if score #rec buffer matches ..7 run function main:craft/enchanting/pool/rec with storage temp
