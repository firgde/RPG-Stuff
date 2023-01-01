#金リンゴエフェクトいらね
    effect clear @a[advancements={main:combat/heal/ate=true}] absorption
    effect clear @a[advancements={main:combat/heal/ate=true}] regeneration
#リセット
    advancement revoke @a[advancements={main:combat/heal/ate=true}] only main:combat/heal/ate
