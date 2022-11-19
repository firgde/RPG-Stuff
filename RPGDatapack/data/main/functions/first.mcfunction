#スコア類
    #レベル・ステータス系
    scoreboard objectives add lvl_total dummy
        #ステータスジャンル(仮)
        #戦闘、探索、採集、手工、社交の五つのジャンルが存在し、それぞれに対応した行動を取る事でレベルが個別に溜まっていく
        scoreboard objectives add add_pt dummy
        #戦闘(攻撃、防御、技巧、会心)
        scoreboard objectives add lvl_combat dummy
        scoreboard objectives add xp_combat dummy
        scoreboard objectives add xp_need_combat dummy
        scoreboard objectives add temporalHealth dummy
        scoreboard objectives add damage dummy
        scoreboard objectives add atkBuffer dummy
        scoreboard objectives add defBuffer dummy
        scoreboard objectives add crtBuffer dummy
        scoreboard objectives add chargeTimer dummy
        scoreboard objectives add takenDamage custom:damage_resisted
        scoreboard objectives add dealtDamage custom:damage_dealt_resisted
        scoreboard objectives add usedBow used:bow
        scoreboard objectives add flyTimer dummy
        scoreboard objectives add flyTime dummy
        scoreboard objectives add debuffTimer dummy
        scoreboard objectives add debuffDamage dummy
        scoreboard objectives add usedRod used:warped_fungus_on_a_stick
        scoreboard objectives add skillCooldown dummy
        scoreboard objectives add sideSkillCooldown dummy
        scoreboard objectives add sideSuccess dummy
        scoreboard objectives add slimeCount dummy
        scoreboard objectives add spawnTimer dummy
        scoreboard objectives add spawnDelay dummy
        #探索(体力、速度、集中、運)
        scoreboard objectives add lvl_explore dummy
        scoreboard objectives add xp_explore dummy
        scoreboard objectives add xp_need_explore dummy
        #scoreboard objectives add mov_walk custom:walk_one_cm
        #scoreboard objectives add mov_run custom:sprint_one_cm
        #scoreboard objectives add mov_swim custom:swim_one_cm
        #scoreboard objectives add mov_walk_water custom:walk_on_water_one_cm
        #scoreboard objectives add mov_walk_underwater custom:walk_under_water_one_cm
        #scoreboard objectives add mov_sneak custom:crouch_one_cm
        #scoreboard objectives add mov_fly custom:fly_one_cm
        #scoreboard objectives add mov_dis dummy
        #scoreboard objectives add mov_point dummy
        #採集(防御、体力、魔法、運)
        scoreboard objectives add lvl_collect dummy
        scoreboard objectives add xp_collect dummy
        scoreboard objectives add xp_need_collect dummy
        #手工(攻撃、知能、速度、集中)
        scoreboard objectives add lvl_craft dummy
        scoreboard objectives add xp_craft dummy
        scoreboard objectives add xp_need_craft dummy
        #社交(魔法、知能、技巧、会心)
        scoreboard objectives add dialogue trigger
        scoreboard objectives add dprogress dummy
        scoreboard objectives add lvl_social dummy
        scoreboard objectives add xp_social dummy
        scoreboard objectives add xp_need_social dummy

        #ステータス類(実際の値と基礎,追加値)
        #攻撃(物理攻撃力)
        scoreboard objectives add atk dummy
        scoreboard objectives add atk_bonus dummy
        scoreboard objectives add atk_base dummy
        scoreboard objectives add atk_enchant dummy
        scoreboard objectives add atk_buff dummy
        #魔法(魔法攻撃力)
        scoreboard objectives add mag dummy
        scoreboard objectives add mag_bonus dummy
        scoreboard objectives add mag_base dummy
        scoreboard objectives add mag_enchant dummy
        scoreboard objectives add mag_buff dummy
        #技巧(遠距離攻撃力)
        scoreboard objectives add dex dummy
        scoreboard objectives add dex_bonus dummy
        scoreboard objectives add dex_base dummy
        scoreboard objectives add dex_enchant dummy
        scoreboard objectives add dex_buff dummy
        #体力(HPとその回復速度)
        scoreboard objectives add max_hp dummy
        scoreboard objectives add hp dummy
        scoreboard objectives add max_hp_bonus dummy
        scoreboard objectives add max_hp_base dummy
        scoreboard objectives add max_hp_enchant dummy
        scoreboard objectives add hp_ratio dummy
        scoreboard objectives add hp_buffer dummy
        scoreboard objectives add max_hp_buff dummy
        scoreboard objectives add healAmountHP dummy
        #知能(MPとその回復速度)
        scoreboard objectives add max_mp dummy
        scoreboard objectives add mp dummy
        scoreboard objectives add mp_regen dummy
        scoreboard objectives add int dummy
        scoreboard objectives add int_bonus dummy
        scoreboard objectives add int_base dummy
        scoreboard objectives add int_enchant dummy
        scoreboard objectives add int_buff dummy
        scoreboard objectives add healAmountMP dummy
        scoreboard objectives add healTimerMP dummy
        scoreboard objectives add healAmountMP dummy
        #防御(防御力)
        scoreboard objectives add def dummy
        scoreboard objectives add def_bonus dummy
        scoreboard objectives add def_base dummy
        scoreboard objectives add def_enchant dummy
        scoreboard objectives add def_buff dummy
        #速度(移動&攻撃速度)
        scoreboard objectives add spd dummy
        scoreboard objectives add spd_bonus dummy
        scoreboard objectives add spd_base dummy
        scoreboard objectives add spd_enchant dummy
        scoreboard objectives add spd_buff dummy
        scoreboard objectives add spd_prv dummy
        #会心(クリティカル率、クリティカル倍率)
        scoreboard objectives add crt dummy
        scoreboard objectives add crt_bonus dummy
        scoreboard objectives add crt_base dummy
        scoreboard objectives add crt_enchant dummy
        scoreboard objectives add crt_buff dummy
        #運(ドロップ率、回避率などのRNG操作ステータス)
        scoreboard objectives add luk dummy
        scoreboard objectives add luk_bonus dummy
        scoreboard objectives add luk_base dummy
        scoreboard objectives add luk_enchant dummy
        scoreboard objectives add luk_buff dummy
        #集中(当たり判定の増加、索敵の効率化、クラフトの成功率の向上などその他)
        scoreboard objectives add conc dummy
        scoreboard objectives add conc_bonus dummy
        scoreboard objectives add conc_base dummy
        scoreboard objectives add conc_enchant dummy
        scoreboard objectives add conc_buff dummy
        
        #(...分類できねぇ)
        scoreboard objectives add durability dummy
        scoreboard objectives add maxDurability dummy
        scoreboard objectives add dur_ratio dummy
        scoreboard objectives add foodTimer dummy
    #プレイヤー区別用のID
    scoreboard objectives add playerID dummy
    #バッファ
    scoreboard objectives add buffer dummy
    #手に持っているアイテムのスロット
    scoreboard objectives add slot dummy
    scoreboard objectives add prevslot dummy
    #定数
    scoreboard objectives add const dummy
    scoreboard players set #0 const 0
    scoreboard players set #2 const 2
    scoreboard players set #4 const 4
    scoreboard players set #5 const 5
    scoreboard players set #8 const 8
    scoreboard players set #10 const 10
    scoreboard players set #15 const 15
    scoreboard players set #20 const 20
    scoreboard players set #80 const 80
    scoreboard players set #100 const 100
    scoreboard players set #1024 const 1024
    scoreboard players set #2000 const 2000
    scoreboard players set #10000 const 10000
    scoreboard players set #10000 buffer 10000
    scoreboard players set #2^20 const 1048576
    scoreboard players set #2^21 const 2097152
    scoreboard players set #2^24 const 16777216
#チーム
    team add hostile
#タイトルの表示時間
    title @a times 10 40 10
    #execute as @a run attribute @s generic.attack_damage base set 10.19をどこかに追加して武器の攻撃力attributeを0に
