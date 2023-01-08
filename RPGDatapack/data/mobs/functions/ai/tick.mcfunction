#どのMobか特定

    #普通のAI付きのMob(1000~)
    execute if score @s mob_id matches 1000 run function mobs:ai/1000_zombie_mage/tick

    #バニラMobに色々行動させるボス(2000~)
    execute if score @s mob_id matches 2000 run function mobs:ai/2000_boss/tick

    #アマスタ+バニラMobのカスタムモデルボス(3000~)
    
