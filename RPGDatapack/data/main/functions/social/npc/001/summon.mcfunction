#それではご覧ください！普通の村人、ID-001です！
#取引内容
    data modify storage npc: Data.Offers.Recipes set value [{},{}]
    data modify storage npc: Data.Offers.Recipes[0] set value {buy:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:8998,Customnbt:{id:"purse"},display:{Name:'{"italic":false,"color":"white","translate":"item.purse"}',Lore:['{"italic":false,"color":"white","translate":"item.purse.lore"}','{"text":" "}','{"bold":true,"italic":false,"color":"white","translate":"item.ui.rarity.common"}']}}},sell:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1000,display:{Name:'[{"translate":"item.wooden_sword","italic":false},{"text":"   50","color":"gold","italic":false}]'}}},maxUses:2147483647,rewardExp:0b}
    data modify storage npc: Data.Offers.Recipes[1] set value {buy:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:8998,Customnbt:{id:"purse"},display:{Name:'{"italic":false,"color":"white","translate":"item.purse"}',Lore:['{"italic":false,"color":"white","translate":"item.purse.lore"}','{"text":" "}','{"bold":true,"italic":false,"color":"white","translate":"item.ui.rarity.common"}']}}},sell:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1100,display:{Name:'[{"translate":"item.wooden_hammer","italic":false},{"text":"   75","color":"gold","italic":false}]'}}},maxUses:2147483647,rewardExp:0b}
    summon villager ~ ~ ~ {NoAI:1b,VillagerData:{level:2147483647,profession:"weaponsmith"},Tags:["npc.001"]}
    data modify entity @e[tag=npc.001,limit=1,sort=nearest] Offers set from storage npc: Data.Offers
    data remove storage npc: Data
