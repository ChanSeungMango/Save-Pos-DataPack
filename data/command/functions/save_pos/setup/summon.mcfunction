# SP = Save_Pos
# spp = Save_Pos Player

# /trigger save_pos
execute as @a unless score @s save_pos matches 1.. run scoreboard players enable @s save_pos
execute as @a[scores={save_pos=1},tag=!spp] run tag @s add spp

execute as @a[scores={save_pos=1},tag=spp] at @s run summon minecraft:marker ~ ~ ~ {Tags:["SP"],data:{UUID:null}}
execute as @a[scores={save_pos=1},tag=spp] at @s run tp @e[type=minecraft:marker,tag=SP,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,tag=SP] at @s run data modify entity @s data.UUID set from entity @a[scores={save_pos=1},tag=spp,sort=nearest,limit=1,distance=..0.1] UUID

scoreboard players set @a[scores={save_pos=1},tag=spp] save_pos 2

scoreboard players set @a[scores={save_pos=2..},tag=spp] save_pos.armor_stand 2
scoreboard players set @a[scores={save_pos=2..},tag=spp] save_pos.armor_stand.small 2

# /trigger save_pos.armor_stand
execute as @a unless score @s save_pos.armor_stand matches 1.. run scoreboard players enable @a save_pos.armor_stand
execute as @a[scores={save_pos.armor_stand=1},tag=!spp] run tag @s add spp

execute as @a[scores={save_pos.armor_stand=1},tag=spp] at @s run summon minecraft:marker ~ ~ ~ {Tags:["SP"],data:{UUID:null}}
execute as @a[scores={save_pos.armor_stand=1},tag=spp] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["SP"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:4868682}}},{id:"leather_leggings",Count:1b,tag:{display:{color:4602533}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:44975}}},{id:"player_head",Count:1b}],HandItems:[{},{}],Pose:{Head:[0.000001f,0f,0f]},DisabledSlots:2039583,Marker:true}
execute as @a[scores={save_pos.armor_stand=1},tag=spp] at @s run tp @e[type=minecraft:armor_stand,tag=SP,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=SP] at @s run data modify entity @s Pose.Head[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Rotation[1]
execute as @a[scores={save_pos.armor_stand=1},tag=spp] at @s run tp @e[type=minecraft:marker,tag=SP,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,tag=SP] at @s run data modify entity @s data.UUID set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] UUID

execute as @a[scores={save_pos.armor_stand=1},tag=spp] at @s run loot replace entity @e[type=minecraft:armor_stand,tag=SP,sort=nearest,limit=1,distance=..0.1] armor.head loot minecraft:entities/playerhead
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={Inventory:[{Slot:100b},{}]}] run data modify entity @s ArmorItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:100b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={Inventory:[{Slot:101b},{}]}] run data modify entity @s ArmorItems[1] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:101b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={Inventory:[{Slot:102b},{}]}] run data modify entity @s ArmorItems[2] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:102b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s run data modify entity @s HandItems[1] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:-106b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:0}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:0b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:1}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:1b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:2}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:2b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:3}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:3b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:4}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:4b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:5}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:5b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:6}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:6b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:7}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:7b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:8}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:8b}]

scoreboard players set @a[scores={save_pos.armor_stand=1},tag=spp] save_pos.armor_stand 2

scoreboard players set @a[scores={save_pos.armor_stand=2..},tag=spp] save_pos 2
scoreboard players set @a[scores={save_pos.armor_stand=2..},tag=spp] save_pos.armor_stand.small 2

# /trigger save_pos.armor_stand.small
execute as @a unless score @s save_pos.armor_stand.small matches 1.. run scoreboard players enable @a save_pos.armor_stand.small
execute as @a[scores={save_pos.armor_stand.small=1},tag=!spp] run tag @s add spp

execute as @a[scores={save_pos.armor_stand.small=1},tag=spp] at @s run summon minecraft:marker ~ ~ ~ {Tags:["SP"],data:{UUID:null}}
execute as @a[scores={save_pos.armor_stand.small=1},tag=spp] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["SP"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:4868682}}},{id:"leather_leggings",Count:1b,tag:{display:{color:4602533}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:44975}}},{id:"player_head",Count:1b}],HandItems:[{},{}],Pose:{Head:[0.000001f,0f,0f]},DisabledSlots:2039583,Marker:true,Small:1b}
execute as @a[scores={save_pos.armor_stand.small=1},tag=spp] at @s run tp @e[type=minecraft:armor_stand,tag=SP,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=SP] at @s run data modify entity @s Pose.Head[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Rotation[1]
execute as @a[scores={save_pos.armor_stand.small=1},tag=spp] at @s run tp @e[type=minecraft:marker,tag=SP,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,tag=SP] at @s run data modify entity @s data.UUID set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] UUID

execute as @a[scores={save_pos.armor_stand.small=1},tag=spp] at @s run loot replace entity @e[type=minecraft:armor_stand,tag=SP,sort=nearest,limit=1,distance=..0.1] armor.head loot minecraft:entities/playerhead
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={Inventory:[{Slot:100b},{}]}] run data modify entity @s ArmorItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:100b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={Inventory:[{Slot:101b},{}]}] run data modify entity @s ArmorItems[1] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:101b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={Inventory:[{Slot:102b},{}]}] run data modify entity @s ArmorItems[2] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:102b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s run data modify entity @s HandItems[1] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:-106b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:0}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:0b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:1}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:1b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:2}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:2b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:3}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:3b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:4}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:4b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:5}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:5b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:6}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:6b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:7}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:7b}]
execute as @e[type=minecraft:armor_stand,tag=SP] at @s if entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1,nbt={SelectedItemSlot:8}] run data modify entity @s HandItems[0] set from entity @a[scores={save_pos.armor_stand.small=1},tag=spp,sort=nearest,limit=1,distance=..0.1] Inventory[{Slot:8b}]

scoreboard players set @a[scores={save_pos.armor_stand.small=1},tag=spp] save_pos.armor_stand.small 2

scoreboard players set @a[scores={save_pos.armor_stand.small=2..},tag=spp] save_pos 2
scoreboard players set @a[scores={save_pos.armor_stand.small=2..},tag=spp] save_pos.armor_stand 2

# kill armor_stand
execute as @e[type=minecraft:armor_stand,tag=SP] at @s unless entity @e[type=minecraft:marker,tag=SP,sort=nearest,limit=1,distance=..0.1] run kill @s