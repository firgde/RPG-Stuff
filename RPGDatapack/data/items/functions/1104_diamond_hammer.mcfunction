#名前だとか説明文だとか
    data modify storage item: Item.Count set value 1b
    data modify storage item: Item.id set value "minecraft:warped_fungus_on_a_stick"
    data modify storage item: Item.tag.display.Name set value '{"italic":false,"color":"blue","translate":"item.diamond_hammer"}'
    data modify storage item: Item.tag.display.Lore set value ['{"translate":"item.diamond_hammer.lore","color":"white","italic":false}']
    data modify storage item: Item.tag.Customnbt.display.Lore set value ['{"translate":"item.diamond_hammer.lore","color":"white","italic":false}']
    data modify storage item: Item.tag.Customnbt.LoreCount set value 1
    scoreboard players set #Lore buffer 1
    data modify storage item: Item.tag.Customnbt.weaponType set value "hammer"
    scoreboard players set #itemtype buffer 1
    data modify storage item: Item.tag.Customnbt.ItemType set value 1
    data modify storage item: Item.tag.HideFlags set value 127
    data modify storage item: Item.tag.Customnbt.weapon set value 1b
    data modify storage item: Item.tag.CustomModelData set value 1104
    data modify storage item: Item.tag.Damage set value 0
    data modify storage item: Item.tag.AttributeModifiers set value [{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;266192592,-932362374,-1729792336,-927508933],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10.19,Operation:0,UUID:[I;-1550551712,2138130775,-1688359397,-1103780835],Slot:"mainhand"}]
    data modify storage item: Item.tag.Customnbt.Unbreakable set value 0b
    data modify storage item: Item.tag.Customnbt.Skills set value {Main:{id:"none"},Side:{id:"none"}}
    data modify storage item: Item.tag.Customnbt.HasSkill set value 0b
    data modify storage item: Item.tag.Customnbt.rarity set value 2
#ステータスとレア度、耐久値設定
    scoreboard players set #atkbonus buffer 55
    scoreboard players set #magbonus buffer 0
    scoreboard players set #tecbonus buffer 0
    scoreboard players set #hpbonus buffer 0
    scoreboard players set #intbonus buffer 0
    scoreboard players set #defbonus buffer 0
    scoreboard players set #spdbonus buffer 0
    scoreboard players set #crtbonus buffer 0
    scoreboard players set #lukbonus buffer 0
    scoreboard players set #concbonus buffer 0
    scoreboard players set #rarity buffer 2
    scoreboard players set #durability buffer 1700
    scoreboard players set #maxdurability buffer 1700
    scoreboard players set #enchantcount buffer 0
    scoreboard players set #hasskill buffer 0
#実際のステータス
    data modify storage item: Item.tag.Customnbt.status.atk set value 55
    data modify storage item: Item.tag.Customnbt.status.mag set value 0
    data modify storage item: Item.tag.Customnbt.status.tec set value 0
    data modify storage item: Item.tag.Customnbt.status.hp set value 0
    data modify storage item: Item.tag.Customnbt.status.int set value 0
    data modify storage item: Item.tag.Customnbt.status.def set value 0
    data modify storage item: Item.tag.Customnbt.status.spd set value 0
    data modify storage item: Item.tag.Customnbt.status.crt set value 0
    data modify storage item: Item.tag.Customnbt.status.luk set value 0
    data modify storage item: Item.tag.Customnbt.status.conc set value 0
    data modify storage item: Item.tag.Customnbt.Durability set value 1700
    data modify storage item: Item.tag.Customnbt.MaxDurability set value 1700
#共通
    function items:set_data/
