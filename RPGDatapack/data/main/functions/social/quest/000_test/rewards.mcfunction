#ダイヤモンド× 5
    data modify storage item: Item.Count set value 5b
    function items:0004_diamond
#ストレージからクエストを消す
    data remove storage social: data.Quest[{id:0}]
