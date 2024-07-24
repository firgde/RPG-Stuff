# 発見していないなら追加
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"book:","path":"data.combat.mob[{id:$(id)}].discovered"},"range":0} run function mobs:knowledge_book/discover with storage book:buffer data.mob
