say reload

###スコア類
    #レベル・ステータス系
    scoreboard objectives add lvl_total dummy
        # ステータスジャンル(仮)
        #戦闘、探索、採集、手工、社交の五つのジャンルが存在し、それぞれに対応した行動を取る事でレベルが個別に溜まっていく
        scoreboard objectives add add_pt dummy
        # 戦闘(攻撃、防御、技巧、会心)
        scoreboard objectives add lvl_combat dummy
        scoreboard objectives add xp_combat dummy
        scoreboard objectives add temporalHealth dummy
        scoreboard objectives add damage dummy
        scoreboard objectives add atkBuffer dummy
        scoreboard objectives add defBuffer dummy
        scoreboard objectives add crtBuffer dummy
        scoreboard objectives add dealtDamage custom:damage_dealt_resisted
        scoreboard objectives add bowCharge dummy
        scoreboard objectives add prevBowCharge dummy
        scoreboard objectives add usedBow used:bow
        scoreboard objectives add flyTimer dummy
        scoreboard objectives add flyTime dummy
        scoreboard objectives add buff_timer dummy
        scoreboard objectives add buff_amount dummy
        scoreboard objectives add usedRod used:warped_fungus_on_a_stick
        scoreboard objectives add ability_cooldown dummy
        scoreboard objectives add current_ability_cooldown dummy
        scoreboard objectives add spawnTimer dummy
        scoreboard objectives add spawnDelay dummy
        scoreboard objectives add aiTimer dummy
        scoreboard objectives add mob_id dummy
        scoreboard objectives add flyratio dummy
        scoreboard objectives add frate dummy
        scoreboard objectives add hasAttacker dummy
        scoreboard objectives add hasTarget dummy
        scoreboard objectives add higher dummy
        scoreboard objectives add homing_priority dummy
        scoreboard objectives add main_element dummy
        scoreboard objectives add side_element dummy
        scoreboard objectives add element dummy
        scoreboard objectives add combo_count dummy
        scoreboard objectives add dmg_reduction dummy
        scoreboard objectives add combo_time dummy
        scoreboard objectives add timestamp dummy
        scoreboard objectives add hasVehicle dummy
        scoreboard objectives add hurt_time dummy
        scoreboard objectives add fall_distance dummy
        scoreboard objectives add ability_timer dummy
        scoreboard objectives add combat_timer dummy
        # 探索(体力、速度、集中、運)
        scoreboard objectives add lvl_explore dummy
        scoreboard objectives add xp_explore dummy
        #scoreboard objectives add mov_walk custom:walk_one_cm
        #scoreboard objectives add mov_run custom:sprint_one_cm
        #scoreboard objectives add mov_swim custom:swim_one_cm
        #scoreboard objectives add mov_walk_water custom:walk_on_water_one_cm
        #scoreboard objectives add mov_walk_underwater custom:walk_under_water_one_cm
        #scoreboard objectives add mov_sneak custom:crouch_one_cm
        #scoreboard objectives add mov_fly custom:fly_one_cm
        #scoreboard objectives add mov_dis dummy
        #scoreboard objectives add mov_point dummy
        # 採取(防御、体力、魔法、運)
        scoreboard objectives add lvl_collect dummy
        scoreboard objectives add xp_collect dummy
        # 手工(攻撃、知能、速度、集中)
        scoreboard objectives add lvl_craft dummy
        scoreboard objectives add xp_craft dummy
        scoreboard objectives add hasTarget dummy
        scoreboard objectives add mov_direction dummy
        # 社交(魔法、知能、技巧、会心)
        scoreboard objectives add dprogress dummy
        scoreboard objectives add money dummy
        scoreboard objectives add page dummy
        scoreboard objectives add sub_page dummy
        scoreboard objectives add pick dummy
        scoreboard objectives add throw custom:drop
        scoreboard objectives add pick_action dummy
        scoreboard objectives add lvl_social dummy
        scoreboard objectives add xp_social dummy

        #ステータス類(実際の値と基礎,追加値)
        # 攻撃(物理攻撃力)
        scoreboard objectives add atk dummy
        scoreboard objectives add atk_base dummy
        scoreboard objectives add atk_buff dummy
        # 魔法(魔法攻撃力)
        scoreboard objectives add mag dummy
        scoreboard objectives add mag_base dummy
        scoreboard objectives add mag_buff dummy
        # 技巧(遠距離攻撃力)
        scoreboard objectives add dex dummy
        scoreboard objectives add dex_base dummy
        scoreboard objectives add dex_buff dummy
        # 体力(最大HP)
        scoreboard objectives add max_hp dummy
        scoreboard objectives add hp dummy
        scoreboard objectives add max_hp_base dummy
        scoreboard objectives add hp_ratio dummy
        scoreboard objectives add hp_buffer dummy
        scoreboard objectives add max_hp_buff dummy
        scoreboard objectives add prev_hp dummy
        # 知能(MPとその回復速度)
        scoreboard objectives add max_mana dummy
        scoreboard objectives add mana dummy
        scoreboard objectives add mana_regen dummy
        scoreboard objectives add int dummy
        scoreboard objectives add int_base dummy
        scoreboard objectives add int_buff dummy
        scoreboard objectives add heal_amount_mana dummy
        scoreboard objectives add heal_timer_mana dummy
        scoreboard objectives add mana_ratio dummy
        # 防御(防御力)
        scoreboard objectives add def dummy
        scoreboard objectives add def_base dummy
        scoreboard objectives add def_buff dummy
        # 速度(移動&攻撃速度)
        scoreboard objectives add spd dummy
        scoreboard objectives add spd_base dummy
        scoreboard objectives add spd_buff dummy
        # 会心(クリティカル率、クリティカル倍率)
        scoreboard objectives add crt dummy
        scoreboard objectives add crt_base dummy
        scoreboard objectives add crt_buff dummy
        # 運(ドロップ率などのRNG操作ステータス)
        scoreboard objectives add luk dummy
        scoreboard objectives add luk_base dummy
        scoreboard objectives add luk_buff dummy
        # 集中(範囲攻撃のダメージ増加、魔法攻撃の追尾開始のタイミングなどその他)
        scoreboard objectives add acc dummy
        scoreboard objectives add acc_base dummy
        scoreboard objectives add acc_buff dummy
        scoreboard objectives add dmg_eff dummy
        scoreboard objectives add follow_rate dummy

        # 属性相性
        scoreboard objectives add resistance_melee dummy
        scoreboard objectives add resistance_melee_base dummy
        scoreboard objectives add resistance_melee_buff dummy
        scoreboard objectives add resistance_magic dummy
        scoreboard objectives add resistance_magic_base dummy
        scoreboard objectives add resistance_magic_buff dummy
        scoreboard objectives add resistance_ranged dummy
        scoreboard objectives add resistance_ranged_base dummy
        scoreboard objectives add resistance_ranged_buff dummy
        scoreboard objectives add resistance_fire dummy
        scoreboard objectives add resistance_fire_base dummy
        scoreboard objectives add resistance_fire_buff dummy
        scoreboard objectives add resistance_ice dummy
        scoreboard objectives add resistance_ice_base dummy
        scoreboard objectives add resistance_ice_buff dummy
        scoreboard objectives add resistance_wind dummy
        scoreboard objectives add resistance_wind_base dummy
        scoreboard objectives add resistance_wind_buff dummy
        scoreboard objectives add resistance_thunder dummy
        scoreboard objectives add resistance_thunder_base dummy
        scoreboard objectives add resistance_thunder_buff dummy
        # バフ用AECとEntity紐づけスコア
        scoreboard objectives add hasOrigin dummy
    # 手に持っているアイテムのスロット
    scoreboard objectives add slot dummy
    scoreboard objectives add prevslot dummy
    # バッファ
    scoreboard objectives add buffer dummy
    # 定数
    scoreboard objectives add const dummy
    scoreboard players set #-1 const -1
    scoreboard players set #0 const 0
    scoreboard players set #1 const 1
    scoreboard players set #2 const 2
    scoreboard players set #4 const 4
    scoreboard players set #5 const 5
    scoreboard players set #6 const 6
    scoreboard players set #7 const 7
    scoreboard players set #8 const 8
    scoreboard players set #10 const 10
    scoreboard players set #15 const 15
    scoreboard players set #18 const 18
    scoreboard players set #20 const 20
    scoreboard players set #40 const 40
    scoreboard players set #50 const 50
    scoreboard players set #55 const 55
    scoreboard players set #60 const 60
    scoreboard players set #65 const 65
    scoreboard players set #75 const 75
    scoreboard players set #80 const 80
    scoreboard players set #90 const 90
    scoreboard players set #100 const 100
    scoreboard players set #120 const 120
    scoreboard players set #384 const 384
    scoreboard players set #407 const 407
    scoreboard players set #481 const 481
    scoreboard players set #555 const 555
    scoreboard players set #592 const 592
    scoreboard players set #1024 const 1024
    scoreboard players set #2000 const 2000
    scoreboard players set #10000 const 10000
# チーム
    team add hostile
    team modify hostile color dark_purple
    team add no_col
    team modify no_col collisionRule never
    team add ui
# ボスバー
    bossbar add health: ""
# タイトルの表示時間
    title @p times 5 40 10

# いずれload.mcfunctionに移動される分
    #攻撃力を一律0に
    attribute @p generic.attack_damage base set 0.0
    #ダメージ処理のために無敵に
    effect give @p resistance infinite 255 true
    #餓死しないために満腹度回復
    effect give @p saturation infinite 255 true
