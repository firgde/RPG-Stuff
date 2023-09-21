# 0004 + 0007 → 0008
    execute if score $id0 buffer matches 4 if score $id1 buffer matches 7 run function asset:item/0008_ruby/give
    execute if score $id0 buffer matches 7 if score $id1 buffer matches 4 run function asset:item/0008_ruby/give
