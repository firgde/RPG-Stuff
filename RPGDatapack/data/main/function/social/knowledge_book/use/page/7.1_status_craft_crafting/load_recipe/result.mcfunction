# シュル箱にアイテム
    tag @s add not_give
    $function asset:item/$(result)/give
    tag @s remove not_give
