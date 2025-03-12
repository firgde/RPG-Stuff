
    scoreboard objectives setdisplay sidebar sidebar_ui
    scoreboard players set sidebar.pick.craft sidebar_ui 0
    execute if predicate hud:crafting/pick if predicate {"condition":"entity_properties","entity":"this","predicate":{"type_specific":{"type":"player","looking_at":{"type":"interaction","nbt":"{Tags:[\"crafting\"]}","passenger":{"slots":{"contents":{"count":{"min":2}}}}}}}} run scoreboard players set sidebar.pick_all sidebar_ui 0
