
    tag @a[limit=1] add not_give
    $execute as @a[limit=1] run function asset:item/$(result)/give
    tag @a[limit=1] remove not_give
