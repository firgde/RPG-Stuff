# ストレージを一旦リセット
    data remove storage combat: data.hud.hpBar
# HPバーの表示割合取得(1/80単位)
    #現在体力との差を求める
    execute store result score #diff hp_ratio run data get storage combat: data.hud.ratio
    scoreboard players operation #diff hp_ratio -= #prev hp_ratio
# HPが減った時だけアニメーション
    execute if score #diff hp_ratio matches ..0 run scoreboard players operation #diff hp_ratio /= #2 const

    execute store result storage combat: data.hud.progress int 1 run scoreboard players operation #prev hp_ratio += #diff hp_ratio
# hudにマクロで反映
    function hud:hp_bar/display with storage combat: data.hud
# リセット
    scoreboard players reset #diff hp_ratio
