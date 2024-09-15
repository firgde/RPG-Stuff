# マーカーのdataに保存されているloot_tableを呼び出す
    $data modify block ~ ~ ~ LootTable set value "$(loot_table)"
# openedタグ消す
    tag @s remove explore.chest.opened
