say reload

###スコア類
    #レベル・ステータス系
    scoreboard objectives add lvl_total dummy
    # ステータスジャンル(仮)
        # 戦闘、探索、採集、手工、社交の五つのジャンルが存在し、それぞれに対応した行動を取る事でレベルが個別に溜まっていく
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
            scoreboard objectives add bow_charge dummy
            scoreboard objectives add prev_bow_charge dummy
            scoreboard objectives add usedBow used:bow
            scoreboard objectives add time_flied dummy
            scoreboard objectives add max_flying_time dummy
            scoreboard objectives add buff_timer_element dummy
            scoreboard objectives add buff_amount dummy
            scoreboard objectives add usedRod used:warped_fungus_on_a_stick
            scoreboard objectives add ability_cooldown dummy
            scoreboard objectives add current_ability_cooldown dummy
            scoreboard objectives add aiTimer dummy
            scoreboard objectives add mob_id dummy
            scoreboard objectives add flyratio dummy
            scoreboard objectives add has_attacker dummy
            scoreboard objectives add hasTarget dummy
            scoreboard objectives add higher dummy
            scoreboard objectives add homing_priority dummy
            scoreboard objectives add main_element dummy
            scoreboard objectives add side_element dummy
            scoreboard objectives add element dummy
            scoreboard objectives add combo_count dummy
            scoreboard objectives add combo_dmg_reduction dummy
            scoreboard objectives add max_combo_time dummy
            scoreboard objectives add combo_time dummy
            scoreboard objectives add combo_crt_min dummy
            scoreboard objectives add combo_crt_max dummy
            scoreboard objectives add max_combo_count dummy
            scoreboard objectives add combo_damage_multiplier dummy
            scoreboard objectives add timestamp dummy
            scoreboard objectives add hasVehicle dummy
            scoreboard objectives add hurt_time dummy
            scoreboard objectives add fall_distance dummy
            scoreboard objectives add ability_timer dummy
            scoreboard objectives add combat_timer dummy
            scoreboard objectives add usedBook used:knowledge_book
        # 探索(体力、速度、集中、運)
            scoreboard objectives add lvl_explore dummy
            scoreboard objectives add xp_explore dummy
            scoreboard objectives add gimmick_state dummy
        # 採取(防御、体力、魔法、運)
            scoreboard objectives add generation_cooldown dummy
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

    # ステータス類(実際の値と基礎,追加値)
        # 攻撃(物理攻撃力)
            scoreboard objectives add atk dummy
            scoreboard objectives add atk_base dummy
            scoreboard objectives add atk_buff dummy
            scoreboard objectives add buff_timer_atk dummy
        # 魔術(魔術攻撃力)
            scoreboard objectives add mag dummy
            scoreboard objectives add mag_base dummy
            scoreboard objectives add mag_buff dummy
            scoreboard objectives add buff_timer_mag dummy
        # 技巧(遠距離攻撃力)
            scoreboard objectives add dex dummy
            scoreboard objectives add dex_base dummy
            scoreboard objectives add dex_buff dummy
            scoreboard objectives add buff_timer_dex dummy
        # 体力(最大HP)
            scoreboard objectives add max_hp dummy
            scoreboard objectives add hp dummy
            scoreboard objectives add max_hp_base dummy
            scoreboard objectives add hp_ratio dummy
            scoreboard objectives add hp_buffer dummy
            scoreboard objectives add max_hp_buff dummy
            scoreboard objectives add buff_timer_max_hp dummy
            scoreboard objectives add prev_hp dummy
        # 知能(最大MPとその回復速度)
            scoreboard objectives add max_mana dummy
            scoreboard objectives add mana dummy
            scoreboard objectives add mana_regen dummy
            scoreboard objectives add int dummy
            scoreboard objectives add int_base dummy
            scoreboard objectives add int_buff dummy
            scoreboard objectives add buff_timer_int dummy
            scoreboard objectives add heal_amount_mana dummy
            scoreboard objectives add heal_timer_mana dummy
            scoreboard objectives add mana_ratio dummy
        # 防御(防御力)
            scoreboard objectives add def dummy
            scoreboard objectives add def_base dummy
            scoreboard objectives add def_buff dummy
            scoreboard objectives add buff_timer_def dummy
        # 速度(移動速度)
            scoreboard objectives add spd dummy
            scoreboard objectives add spd_base dummy
            scoreboard objectives add spd_buff dummy
            scoreboard objectives add buff_timer_spd dummy
        # 会心(クリティカル率、クリティカル倍率)
            scoreboard objectives add crt dummy
            scoreboard objectives add crt_base dummy
            scoreboard objectives add crt_buff dummy
            scoreboard objectives add buff_timer_crt dummy
        # 運(ドロップ率などのRNG操作ステータス)
            scoreboard objectives add luk dummy
            scoreboard objectives add luk_base dummy
            scoreboard objectives add luk_buff dummy
            scoreboard objectives add buff_timer_luk dummy
        # 集中(範囲攻撃のダメージ増加、魔法攻撃の追尾開始のタイミングなどその他)
            scoreboard objectives add acc dummy
            scoreboard objectives add acc_base dummy
            scoreboard objectives add acc_buff dummy
            scoreboard objectives add buff_timer_acc dummy
            scoreboard objectives add dmg_eff dummy
            scoreboard objectives add follow_rate dummy

        # 属性相性
            scoreboard objectives add resistance_melee dummy
            scoreboard objectives add resistance_melee_base dummy
            scoreboard objectives add resistance_melee_buff dummy
            scoreboard objectives add buff_timer_resistance_melee dummy
            scoreboard objectives add resistance_magic dummy
            scoreboard objectives add resistance_magic_base dummy
            scoreboard objectives add resistance_magic_buff dummy
            scoreboard objectives add buff_timer_resistance_magic dummy
            scoreboard objectives add resistance_ranged dummy
            scoreboard objectives add resistance_ranged_base dummy
            scoreboard objectives add resistance_ranged_buff dummy
            scoreboard objectives add buff_timer_resistance_ranged dummy
            scoreboard objectives add resistance_fire dummy
            scoreboard objectives add resistance_fire_base dummy
            scoreboard objectives add resistance_fire_buff dummy
            scoreboard objectives add buff_timer_resistance_fire dummy
            scoreboard objectives add resistance_ice dummy
            scoreboard objectives add resistance_ice_base dummy
            scoreboard objectives add resistance_ice_buff dummy
            scoreboard objectives add buff_timer_resistance_ice dummy
            scoreboard objectives add resistance_wind dummy
            scoreboard objectives add resistance_wind_base dummy
            scoreboard objectives add resistance_wind_buff dummy
            scoreboard objectives add buff_timer_resistance_wind dummy
            scoreboard objectives add resistance_thunder dummy
            scoreboard objectives add resistance_thunder_base dummy
            scoreboard objectives add resistance_thunder_buff dummy
            scoreboard objectives add buff_timer_resistance_thunder dummy
    # バフ用AECとEntity紐づけスコア
        scoreboard objectives add hasOrigin dummy
    # サイドバーUI
        scoreboard objectives add sidebar_ui dummy
        scoreboard objectives modify sidebar_ui numberformat blank
        scoreboard objectives modify sidebar_ui displayname ""
    # パーティクルのタイマー
        scoreboard objectives add particle_timer dummy
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
        scoreboard players set #3 const 3
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
        scoreboard players set #24000 const 24000
# チーム
    team add hostile
    team modify hostile color dark_purple
    team add no_col
    team modify no_col collisionRule never
    team add ui
    # サイドバーに表示する情報
        # 攻撃
            team add control.attack
            team join control.attack sidebar.attack
            team modify control.attack prefix {"text":"\uF80F\uF80F\uF80F\uF80B"}
            team modify control.attack suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.attack","font": "asset:keybind"},{"translate": "sidebar.control.attack"}]
        # 連撃
            team add control.attack_combo
            team join control.attack_combo sidebar.attack_combo
            team modify control.attack_combo prefix {"text":"\uF80F\uF80F\uF80C\uF80A\uF808"}
            team modify control.attack_combo suffix [{"text":"\uF82F\uF82F\uF82A\uF829\uF828\uF824"},{"keybind": "key.attack","font": "asset:keybind"},{"translate": "sidebar.control.attack_combo"}]
        # 使用
            team add control.use
            team join control.use sidebar.use
            team modify control.use prefix {"text":"\uF80F\uF80F\uF80F\uF80A\uF809\uF803"}
            team modify control.use suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.use"}]
        # 消費
            team add control.consume
            team join control.consume sidebar.consume
            team modify control.consume prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF808\uF803"}
            team modify control.consume suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.consume"}]
        # アイテム設置(クラフト&修復&錬金術)
            team add place.craft
            team join place.craft sidebar.place.craft
            team modify place.craft prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF809\uF808\uF801"}
            team modify place.craft suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.place.craft"}]
        # 一括設置
            team add place_all
            team join place_all sidebar.place_all
            team modify place_all prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF808\uF805"}
            team modify place_all suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.sneak","font": "asset:keybind"},{"text": "+"},{"keybind":"key.use","font": "asset:keybind"},{"translate": "sidebar.place_all"}]
        # アイテム取り出し(クラフト&修復&錬金術)
            team add pick.craft
            team join pick.craft sidebar.pick.craft
            team modify pick.craft prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF809\uF801"}
            team modify pick.craft suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.attack","font": "asset:keybind"},{"translate": "sidebar.pick.craft"}]
        # 一括取り出し
            team add pick_all
            team join pick_all sidebar.pick_all
            team modify pick_all prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF805"}
            team modify pick_all suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.sneak","font": "asset:keybind"},{"text": "+"},{"keybind":"key.attack","font": "asset:keybind"},{"translate": "sidebar.pick_all"}]
        # クラフト
            team add control.craft
            team join control.craft sidebar.craft
            team modify control.craft prefix {"text":"\uF80F\uF80F\uF80F\uF80A\uF809\uF808\uF804"}
            team modify control.craft suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.attack","font": "asset:keybind"},{"translate": "sidebar.control.craft"}]
        # エンチャント
            team add control.enchant
            team join control.enchant sidebar.enchant
            team modify control.enchant prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF808\uF801"}
            team modify control.enchant suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.attack","font": "asset:keybind"},{"translate": "sidebar.control.enchant"}]
        # 修復
            team add control.repair
            team join control.repair sidebar.repair
            team modify control.repair prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF801"}
            team modify control.repair suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.attack","font": "asset:keybind"},{"translate": "sidebar.control.repair"}]
        # 錬金
            team add control.create
            team join control.create sidebar.create
            team modify control.create prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF809\uF808\uF801"}
            team modify control.create suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.create"}]
        # スキル
            team add control.ability
            team join control.ability sidebar.ability
            team modify control.ability prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF822"}
            team modify control.ability suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.ability"}]
        # 会話
            team add control.talk
            team join control.talk sidebar.talk
            team modify control.talk prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF828\uF825"}
            team modify control.talk suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.talk"}]
        # 会話の進行
            team add control.talk_progress
            team join control.talk_progress sidebar.talk_progress
            team modify control.talk_progress prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF80A\uF808\uF801"}
            team modify control.talk_progress suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.talk_progress"}]
        # 取引
            team add control.trade
            team join control.trade sidebar.trade
            team modify control.trade prefix {"text":"\uF80F\uF80F\uF80F\uF80B\uF823"}
            team modify control.trade suffix [{"text":"\uF82F\uF82F\uF82F\uF808"},{"keybind": "key.use","font": "asset:keybind"},{"translate": "sidebar.control.trade"}]
# ボスバー
    bossbar add health: ""
# タイトルの表示時間
    title @a[limit=1] times 5 40 10

# いずれload.mcfunctionに移動される分
    #攻撃力を一律0に
    attribute @a[limit=1] attack_damage base set 0.0
    #ダメージ処理のために無敵に
    effect give @a[limit=1] resistance infinite 255 true
    #餓死しないために満腹度回復
    effect give @a[limit=1] saturation infinite 255 true
