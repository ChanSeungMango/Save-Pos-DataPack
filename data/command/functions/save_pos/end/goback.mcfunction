scoreboard players enable @a[tag=spp] save_pos.end

data modify storage minecraft:save_pos UUID.UUID_var set from entity @a[scores={save_pos.end=1..},tag=spp,sort=random,limit=1] UUID
execute if entity @a[scores={save_pos.end=1},tag=spp] run function command:save_pos/end/uuid_var with storage minecraft:save_pos UUID