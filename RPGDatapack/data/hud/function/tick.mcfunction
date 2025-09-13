# 色々表示
    title @a[limit=1] actionbar [{"text":"\uF80B\uF829\uF828\uF826"}, \
    {"nbt":"data.hud.hpBar","storage":"combat:","interpret":true,"font":"asset:hotbar","shadow_color": 0}, \
    {"text": "\uF80B\uF809\uF802"}, \
    {"nbt":"data.hud.Name","storage": "combat:","interpret": true,"font": "asset:mob_name"}, \
    {"text": "\uF82A"}, \
    {"nbt":"data.hud.heart","storage": "combat:","font":"asset:hotbar","interpret": true}, \
    {"score":{"name":"@a","objective":"hp"},"font":"asset:hotbar"}, \
    {"text":"/","font":"asset:hotbar"}, \
    {"score":{"name":"@a","objective":"max_hp"},"font":"asset:hotbar"}, \
    {"nbt":"data.hud.Space","storage":"combat:","interpret": true}, \
    {"text": "\uF82A\uF829"}, \
    {"nbt":"data.hud.hasBuff","storage":"combat:","interpret":true,"font": "asset:hotbar"}, \
    {"nbt":"data.hud.buff[]","storage": "combat:","interpret": true,"font": "asset:hotbar","separator": ""}, \
    {"text": "\uF80B\uF80A\uF808\uF805"}, \
    {"nbt":"data.hud.hasDebuff","storage":"combat:","interpret":true,"font": "asset:hotbar"}, \
    {"nbt":"data.hud.debuff[]","font":"asset:hotbar","storage": "combat:","interpret": true,"separator": ""}, \
    {"text": "\uF828","font": "asset:hotbar"}, \
    {"text": "\uE400","font":"asset:hotbar","shadow_color": 0}, \
    {"text": "\uF80B\uF824"}, \
    {"nbt":"data.hud.dimension","interpret":true,"font":"asset:dimension_name","storage":"explore:"}, \
    {"nbt":"data.hud.name","interpret":true,"font":"asset:area_name","storage":"explore:"}, \
    {"text":"\uF804"}, \
    {"nbt": "data.hud.Cooldown","storage": "combat:","font": "asset:hotbar","interpret": true,"shadow_color": 0}]
# サイドバーUIの管理
    execute as @a[limit=1] at @s if predicate hud:all run function hud:sidebar/tick
# リセット
    execute as @a[limit=1] at @s unless predicate hud:all run scoreboard objectives setdisplay sidebar
