
    $execute store result score #lvl_max buffer run data get storage craft:enchanting data.pool[{id:"$(id)"}].lvl_max
    $execute if score #lvl_max buffer matches ..$(lvl_max) run data modify storage craft:enchanting data.pool[{id:"$(id)"}].lvl_max set value $(lvl_max)
    $execute store result score #lvl_min buffer run data get storage craft:enchanting data.pool[{id:"$(id)"}].lvl_min
    $execute if score #lvl_min buffer matches ..$(lvl_min) run data modify storage craft:enchanting data.pool[{id:"$(id)"}].lvl_min set value $(lvl_min)

    scoreboard players reset #lvl_max buffer
    scoreboard players reset #lvl_min buffer
