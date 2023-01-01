#ぱーん！
    data modify storage magic: Data.Tags set value ["magic","magic.attack","magic.ranged","spd.normal","mob_summoned"]
    data modify storage magic: Data.Time set value 60
    tp @s ~ ~ ~ ~ ~
    execute at @s run function main:combat/attack/magic/summon
    function mobs:ai/zombie_mage/reset_timer
