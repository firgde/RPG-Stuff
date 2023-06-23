# 候補全員を実行者として「自分より優先度が高いEntityの数」を取得
    function main:combat/attack/magic/homing/specify/compare
# もう一度候補全員を実行者として他とhigherスコアを比較
    function main:combat/attack/magic/homing/specify/
# 同じ優先度のEntityが複数いるなら一番近いものをターゲットに
    execute positioned as @p as @e[tag=target,limit=1,sort=nearest] run tag @s add homingTarget
# リセット
    scoreboard players reset $candidateCount buffer
