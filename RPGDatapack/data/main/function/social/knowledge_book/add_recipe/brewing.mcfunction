# 素材が要求されるレシピを発見判定に
    $data modify storage book: data.craft.brewing[{requirement:{$(type):true}}].discovered set value 2
# 新しく発見されたレシピを通知
    function #asset:craft/recipes/brewing
