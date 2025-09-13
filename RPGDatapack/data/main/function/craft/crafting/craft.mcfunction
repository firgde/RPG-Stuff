# シュル箱にアイテム
    tag @a[limit=1] add not_give
    $function asset:item/$(result)/craft/
    tag @a[limit=1] remove not_give
