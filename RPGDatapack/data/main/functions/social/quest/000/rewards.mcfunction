#ダイヤモンド× 5
    data modify storage item: Item.Count set value 5b
    function items:0004_diamond
#クエスト用紙はもう要らない
    clear @s stick{Customnbt:{Quest:{id:0}}}
