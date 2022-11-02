#わーいﾚﾍﾞﾙｱｯﾌﾟだー
    scoreboard players operation @s buffer = @s lvl_combat
    scoreboard players add @s lvl_combat 1
    tellraw @a ["", {"selector": "@s","bold": true}, {"text": "の"},{"text": "戦闘","color": "red"},{"text": "レベルがアップした！   "},{"score": {"name": "*","objective": "buffer"},"color": "#B5FFBA"}, {"text": " → "}, {"score": {"name": "*","objective": "lvl_combat"},"color": "green"}]
#次に必要なXP計算((Lv^2+Lv)*5)
    scoreboard players operation @s buffer = @s lvl_combat
    scoreboard players operation @s buffer *= @s buffer
    scoreboard players operation @s buffer += @s lvl_combat
    scoreboard players operation @s buffer *= #5 const
    scoreboard players operation @s buffer += @s xp_need_combat
    scoreboard players operation @s xp_need_combat = @s buffer
#合計レベルの更新
    function status:_general/set_level
