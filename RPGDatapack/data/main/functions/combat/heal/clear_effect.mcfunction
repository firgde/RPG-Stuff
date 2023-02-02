#金リンゴエフェクトいらね
    effect clear @p[advancements={main:combat/heal/ate=true}] absorption
    effect clear @p[advancements={main:combat/heal/ate=true}] regeneration
#リセット
    advancement revoke @p[advancements={main:combat/heal/ate=true}] only main:combat/heal/ate
