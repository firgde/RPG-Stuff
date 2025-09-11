# 情報をテキストコンポーネントになおす
    $data modify storage craft:temp data.temp[$(row)][{Slot:$(Slot)b}].text set value "■"
    $data modify storage craft:temp data.temp[$(row)][{Slot:$(Slot)b}].color set from storage craft:temp data.color[$(color)]
    $data modify storage craft:key data[{id:$(id)}].color set from storage craft:temp data.color[$(color)]
