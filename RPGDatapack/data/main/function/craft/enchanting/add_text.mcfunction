# custom_data.enchantment.textにappend
    $data modify block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".enchantments.text append value [{translate:"item.ui.enchantment.icon.$(id)",color:"white",italic:false},{translate:"item.ui.enchantment.$(id)",color:"gray",italic:false},{text:" "},{translate:"item.ui.enchantment.lvl.$(lvl)",color:"gray",italic:false}]
