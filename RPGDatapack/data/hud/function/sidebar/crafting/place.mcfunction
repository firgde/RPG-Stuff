# 競合する操作はガイドを消す
    scoreboard players reset sidebar.use
    scoreboard players reset sidebar.consume

    scoreboard objectives setdisplay sidebar sidebar_ui
    scoreboard players set sidebar.place.craft sidebar_ui 0
    execute if predicate hud:crafting/place if predicate {"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"count":{"min":2}}}}} run scoreboard players set sidebar.place_all sidebar_ui 0
