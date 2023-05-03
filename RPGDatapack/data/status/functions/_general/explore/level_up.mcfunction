# わーいﾚﾍﾞﾙｱｯﾌﾟだー
    tellraw @p ["", {"selector": "@s","bold": true}, {"text": "の"},{"text": "探索","color": "blue"},{"text": "レベルがアップした！   "},{"score": {"name": "*","objective": "buffer"},"color": "#B5FFBA"}, {"text": " → "}, {"score": {"name": "*","objective": "lvl_explore"},"color": "green"}]
# 合計レベルの更新
    function status:_general/set_level
