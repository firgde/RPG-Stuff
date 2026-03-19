# マクロからマクロを実行
    $function main:craft/enchanting/ability/specify with storage craft:enchanting data.ability.pool[$(select)]
# ついでにIDも設定
    $data modify block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data".id set from storage craft:enchanting data.ability.pool[$(select)].id
