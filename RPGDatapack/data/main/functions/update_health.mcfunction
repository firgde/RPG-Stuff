#体力の表示
    scoreboard players operation @s hp_buffer = @s hp
    scoreboard players operation @s hp_buffer *= #100 const
    execute store result score @s hp_ratio run scoreboard players operation @s hp_buffer /= @s max_hp
    #百分率を二十分率(?)に換算してstorageに代入
    execute if score @s hp_ratio matches ..49 store result storage health: buffer int 0.2 run scoreboard players get @s hp_ratio
    execute if score @s hp_ratio matches 50.. run function main:sort_ratio
    execute if entity @s[tag=!debuffed] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"icon"}]
    execute if entity @s[tag=debuffed,tag=debuff.fire] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"fire"}]
    execute if entity @s[tag=debuffed,tag=debuff.ice] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"ice"}]
    execute if entity @s[tag=debuffed,tag=debuff.palsy] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"palsy"}]
    execute if entity @s[tag=debuffed,tag=debuff.disturbed] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"disturbed"}]
    #execute if entity @s[tag=debuffed,tag=debuff.poisoned] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"poisoned"}]
    #execute if entity @s[tag=debuffed,tag=debuff.wither] run title @s actionbar [{"text":"\uF80B"},{"text":"\uF80A"},{"text":"\uF804"},{"nbt":"buffer","storage": "health:","font":"wither"}]
    ###【要実装】
