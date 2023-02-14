#ストレージにないならadvancement剝奪
    execute unless data storage social: data.Quest[{id:0}] run advancement revoke @s only main:social/quest/000_test/check
#あるならクリア判定
    execute if data storage social: data.Quest[{id:0}] run advancement grant @s only main:social/quest/combat/000_test/display
