# 棒
    loot replace block 0 -59 0 container.1 loot main:rng
    execute store result score $rng buffer run data get block 0 -59 0 Items[{Slot:1b}].tag.Damage
# リセット
    item replace block 0 -59 0 container.0 with air
