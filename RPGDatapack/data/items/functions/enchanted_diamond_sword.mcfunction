#名前だとか説明文だとか
    data modify storage item: Item.Count set value 1b
    data modify storage item: Item.id set value "minecraft:warped_fungus_on_a_stick"
    data modify storage item: Item.tag.display.Name set value '{"translate":"item.diamond_sword","color":"dark_purple","italic":false}'
    data modify storage item: Item.tag.Enchantments set value [{}]
    data modify storage item: Item.tag.display.Lore set value ['{"translate":"item.diamond_sword.lore","color":"white","italic":false}']
    data modify storage item: Item.tag.Customnbt.LoreCount set value 1
    scoreboard players set #Lore buffer 1
    data modify storage item: Item.tag.Customnbt.weaponType set value "melee"
    scoreboard players set #itemtype buffer 1
    data modify storage item: Item.tag.Customnbt.ItemType set value 1
    data modify storage item: Item.tag.HideFlags set value 127
    data modify storage item: Item.tag.Customnbt.weapon set value 1b
    data modify storage item: Item.tag.CustomModelData set value 5
    data modify storage item: Item.tag.Damage set value 0
    data modify storage item: Item.tag.AttributeModifiers set value [{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;266192592,-932362374,-1729792336,-927508933],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:151.45,Operation:0,UUID:[I;-1550551712,2138130775,-1688359397,-1103780835],Slot:"mainhand"}]
    data modify storage item: Item.tag.Customnbt.Unbreakable set value 0b
    data modify storage item: Item.tag.Customnbt.Skills set value {Main:{id:"none"},Side:{id:"none"}}
    data modify storage item: Item.tag.Customnbt.HasSkill set value 0b
    data modify storage item: Item.tag.Customnbt.rarity set value 3
#ステータスとレア度、耐久値設定
    scoreboard players set #atkbonus buffer 35
    scoreboard players set #magbonus buffer 0
    scoreboard players set #tecbonus buffer 0
    scoreboard players set #hpbonus buffer 0
    scoreboard players set #intbonus buffer 0
    scoreboard players set #defbonus buffer 0
    scoreboard players set #spdbonus buffer 0
    scoreboard players set #crtbonus buffer 0
    scoreboard players set #lukbonus buffer 0
    scoreboard players set #concbonus buffer 0
    scoreboard players set #rarity buffer 3
    scoreboard players set #durability buffer 1561
    scoreboard players set #maxdurability buffer 1561
    scoreboard players set #enchantcount buffer 3
    scoreboard players set #hasskill buffer 0
    #実際のステータス
    data modify storage item: Item.tag.Customnbt.status.atk set value 35
    data modify storage item: Item.tag.Customnbt.status.mag set value 0
    data modify storage item: Item.tag.Customnbt.status.tec set value 0
    data modify storage item: Item.tag.Customnbt.status.hp set value 0
    data modify storage item: Item.tag.Customnbt.status.int set value 0
    data modify storage item: Item.tag.Customnbt.status.def set value 0
    data modify storage item: Item.tag.Customnbt.status.spd set value 0
    data modify storage item: Item.tag.Customnbt.status.crt set value 0
    data modify storage item: Item.tag.Customnbt.status.luk set value 0
    data modify storage item: Item.tag.Customnbt.status.conc set value 0
    data modify storage item: Item.tag.Customnbt.Durability set value 1561
    data modify storage item: Item.tag.Customnbt.MaxDurability set value 1561
    data modify storage item: Item.tag.Customnbt.Enchantments set value [{id:"sharpness",lvl:2s,display:{"Name":"ダメージ増加 ","lvl":"II","status":"：攻撃",buff:10},Type:1},{id:"critical_strike",lvl:2s,display:{"Name":"急所突き ","lvl":"III","status":"：会心",buff:25},Type:1},{id:"fragility",lvl:2s,display:{"Name":"脆弱の呪い ","lvl":"I","status":"：耐久",buff:-5},Type:0}]
    data modify storage item: Item.tag.Customnbt.Enchantbuff set value {atk:10,mag:0,tec:0,hp:0,int:0,def:0,spd:0,crt:25,luk:0,conc:.0}
#共通
    function items:set_data/
