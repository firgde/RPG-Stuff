
    $data modify storage combat: data.buff.time set value $(atk)
    $execute unless score #0 const matches $(atk) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(mag)
    $execute unless score #0 const matches $(mag) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(dex)
    $execute unless score #0 const matches $(dex) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(hp)
    $execute unless score #0 const matches $(hp) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(int)
    $execute unless score #0 const matches $(int) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(def)
    $execute unless score #0 const matches $(def) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(spd)
    $execute unless score #0 const matches $(spd) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(crt)
    $execute unless score #0 const matches $(crt) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(luk)
    $execute unless score #0 const matches $(luk) at @s run function status:buff/summon
    $data modify storage combat: data.buff.time set value $(acc)
    $execute unless score #0 const matches $(acc) at @s run function status:buff/summon
