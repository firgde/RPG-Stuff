# 名前、表情、文章を持ってくる
    #1行目(表情+名前)
    $tellraw @p [{"translate":"$(face)"},{"text": "<"},{"selector":"@s"},{"text": ">"}]
    #2行目(文章)
    $tellraw @p [{"text":"\uF829\uF828"},$(text)]
# 空白
    tellraw @p ""
