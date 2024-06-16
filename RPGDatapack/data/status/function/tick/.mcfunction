## SelectedItem関連のtick処理
    function status:tick/selected_item
## MP関連のtick処理
    function status:int/tick
## バフのtick処理
    execute as @e[tag=buff] run function status:buff/tick
