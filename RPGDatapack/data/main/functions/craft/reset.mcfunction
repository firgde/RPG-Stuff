# 回されたら戻す
    execute at @s as @e[type=item_frame,sort=nearest,limit=1] run data modify entity @s ItemRotation set value 0
    advancement revoke @s only main:rotated
