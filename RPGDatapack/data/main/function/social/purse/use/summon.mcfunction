# 召喚した後、当たり判定を消す
    summon chest_minecart ~ ~ ~ {Tags:["purse","minecartUI","summon"],DisplayState:{"Name":"air"},DisplayOffset:-65536,NoGravity:1b,Invulnerable:1b,PortalCooldown:1}
    team join no_col @e[tag=purse,tag=summon]
    team join ui @e[tag=purse,tag=summon]
    team modify ui prefix [{"translate":"social.ui.purse.page.main.ui","color": "white"},{"translate":"social.ui.purse.page.main.name","color": "dark_gray"},{"text": "\uF80F"}]
    scoreboard players set @e[tag=purse,tag=summon] page 0
