# 音
    playsound block.amethyst_block.break master @a ~ ~ ~ 0.5 0.6
# パーティクル
    particle witch ~ ~ ~ 0.1 0.1 0.1 0.1 20
    particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
    particle crit ~ ~ ~ 0.1 0.3 0.1 0.5 25
# 連撃interaction消す
    execute on passengers run kill @s
