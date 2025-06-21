#> main:tick
# ゲームの核となる処理群

## 戦闘のtick処理
    function main:combat/tick

## ステータスのtick処理
    execute as @a run function status:tick/

## Mob関連のtick処理
    execute at @a run function mobs:tick

## 探索のtick処理
    function main:explore/tick

## 採取のtick処理
    function main:collect/tick

## 手工のtick処理
    execute as @a at @s if entity @e[tag=craft,distance=..6] run function main:craft/tick

## 社交のtick処理
    execute as @a at @s run function main:social/tick

## HUDのtick処理
    function hud:tick

## カスタムパーティクルのtick処理
    execute at @a as @e[type=item_display,tag=particle,distance=..128] run function main:particle

## (チョットは マシナ みた目に なったカナ?)
