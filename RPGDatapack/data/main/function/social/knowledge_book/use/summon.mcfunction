# 召喚した後、当たり判定を消す
    summon chest_minecart ~ ~ ~ {Tags:["knowledge_book","minecartUI","summon"],DisplayState:{"Name":"air"},DisplayOffset:-65536,NoGravity:1b,Invulnerable:1b,PortalCooldown:1}
    team join no_col @e[tag=knowledge_book,tag=summon]
    team join ui @e[tag=knowledge_book,tag=summon]
    team modify ui prefix [{"translate":"social.ui.knowledge_book.page.main.ui","color": "white"},{"translate":"social.ui.knowledge_book.page.main.name","color": "dark_gray"},{"text": "\uF80F"}]
    scoreboard players set @e[tag=knowledge_book,tag=summon] page 0
