$tp @a[nbt={UUID:$(UUID_var)}] @e[nbt={data:{UUID:$(UUID_var)}},type=minecraft:marker,tag=SP,limit=1]
$scoreboard players reset @a[nbt={UUID:$(UUID_var)}] save_pos
$scoreboard players reset @a[nbt={UUID:$(UUID_var)}] save_pos.armor_stand
$scoreboard players reset @a[nbt={UUID:$(UUID_var)}] save_pos.armor_stand.small
$scoreboard players reset @a[nbt={UUID:$(UUID_var)}] save_pos.end
$tag @a[nbt={UUID:$(UUID_var)}] remove spp
$execute as @e[nbt={data:{UUID:$(UUID_var)}},type=minecraft:marker,tag=SP] at @s if entity @a[sort=nearest,limit=1,distance=..1] run kill @s
data remove storage minecraft:save_pos UUID
execute if entity @a[scores={save_pos.end=1..}] run function command:save_pos/end/goback