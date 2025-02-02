# 色々表示
    title @p actionbar [{"text":"\uF80B"}, \
    {"nbt":"data.hud.hpBar","storage":"combat:","interpret":true,"font":"asset:hotbar"}, \
    {"text": "\uF80B\uF809\uF802"}, \
    {"nbt":"data.hud.Name","storage": "combat:","interpret": true,"font": "asset:mob_name"}, \
    {"text": "\uF82A"}, \
    {"nbt":"data.hud.heart","storage": "combat:","font":"asset:hotbar","interpret": true}, \
    {"score":{"name":"@p","objective":"hp"},"font":"asset:hotbar"}, \
    {"text":"/","font":"asset:hotbar"}, \
    {"score":{"name":"@p","objective":"max_hp"},"font":"asset:hotbar"}, \
    {"nbt":"data.hud.Space","storage":"combat:","interpret": true}, \
    {"text": "\uF82A\uF829"}, \
    {"nbt":"data.hud.hasBuff","storage":"combat:","interpret":true,"font": "asset:hotbar"}, \
    {"nbt":"data.hud.buff[]","storage": "combat:","interpret": true,"font": "asset:hotbar","separator": ""}, \
    {"text": "\uF80B\uF80A\uF808\uF805"}, \
    {"nbt":"data.hud.hasDebuff","storage":"combat:","interpret":true,"font": "asset:hotbar"}, \
    {"nbt":"data.hud.debuff[]","font":"asset:hotbar","storage": "combat:","interpret": true,"separator": ""}, \
    {"text": "\uF828","font": "asset:hotbar"}, \
    {"nbt":"data.area.name","interpret":true,"font":"asset:hotbar","storage":"explore:"}, \
    {"text": "\uF80B\uF806"}, \
    {"nbt": "data.hud.Cooldown","storage": "combat:","font": "asset:hotbar","interpret": true}]
# サイドバーUIの管理
    execute as @p at @s run function hud:sidebar/tick
