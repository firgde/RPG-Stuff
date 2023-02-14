#召喚した後、当たり判定を消す
    summon chest_minecart ~ ~ ~ {Tags:["quest_book","minecartUI","summon"],CustomDisplayTile:1b,NoGravity:1b,Invulnerable:1b,PortalCooldown:1,CustomName:'[{"translate":"social.ui.quest_book.page.main.ui","color": "white"},{"translate":"social.ui.quest_book.page.main.name","color": "dark_gray"}]'}
    team join no_col @e[tag=quest_book,tag=summon]
    scoreboard players set @e[tag=quest_book,tag=summon] page 0
