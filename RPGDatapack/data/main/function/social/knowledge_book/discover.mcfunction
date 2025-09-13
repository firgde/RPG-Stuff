# ストレージ変更
    $data modify storage book: data.combat.mob[{id:$(id)}].discovered set value 1
# 桁数に応じてレシピ解除
    $execute if score @s mob_id matches ..9 run recipe give @a[limit=1] asset:social/knowledge_book/status/combat/mob/000$(id)
    $execute if score @s mob_id matches 10..99 run recipe give @a[limit=1] asset:social/knowledge_book/status/combat/mob/00$(id)
    $execute if score @s mob_id matches 100..999 run recipe give @a[limit=1] asset:social/knowledge_book/status/combat/mob/0$(id)
    $execute if score @s mob_id matches 1000.. run recipe give @a[limit=1] asset:social/knowledge_book/status/combat/mob/$(id)
