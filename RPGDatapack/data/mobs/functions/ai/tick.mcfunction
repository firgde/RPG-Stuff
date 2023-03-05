#どのMobか特定

    #普通のAI付きのMob(1000~)
    execute if score @s mob_id matches 1000 run function asset:mob/1000_zombie_mage/ai/tick

    #バニラMobに色々行動させるボス(2000~)
    execute if score @s mob_id matches 2000 run function asset:mob/2000_boss/ai/tick

    #アマスタ+バニラMobのカスタムモデルボス(3000~)
    
