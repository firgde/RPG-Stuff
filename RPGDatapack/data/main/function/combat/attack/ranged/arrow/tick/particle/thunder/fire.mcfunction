# 爆炎っぽいやーつ
    particle smoke ~ ~ ~ 0.1 0.1 0.1 0 1 force
    particle flame ~ ~ ~ 0.1 0.1 0.1 0.025 5 force
    particle small_flame ~ ~ ~ 0.1 0.1 0.1 0.05 5 force
    # particle dust 1 1 0 0.25 ~ ~ ~ 0.1 0.1 0.1 1 7 force
    particle dust{color:[1.0,1.0,0.0],scale:0.25} ~ ~ ~ 0.1 0.1 0.1 1 7 force
    # particle dust_color_transition 1 1 0 1 1 1 0.9 ~ ~ ~ 0.15 0.15 0.15 1 15 force
    particle dust_color_transition{from_color:[1.0,1.0,0.0],to_color:[1.0,1.0,0.9],scale:1.0} ~ ~ ~ 0.15 0.15 0.15 1 15 force
    particle firework ~ ~ ~ 0.15 0.15 0.15 0.25 3 force
    # particle dust 0.1 0.1 0.1 1.5 ~ ~ ~ 0.1 0.1 0.1 5 3 force
    particle dust{color:[0.1,0.1,0.1],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 3 force
