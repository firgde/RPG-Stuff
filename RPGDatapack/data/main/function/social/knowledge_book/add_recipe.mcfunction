# 素材が要求されるレシピを発見判定に
    $data modify storage book: data.craft.crafting[{requirement:{$(id):true}}].discovered set value 2
    $data modify storage book: data.craft.alchemy[{requirement:{$(id):true}}].discovered set value 2
# 新しく発見されたレシピを通知
    function #asset:craft/recipes/crafting
    function #asset:craft/recipes/alchemy
