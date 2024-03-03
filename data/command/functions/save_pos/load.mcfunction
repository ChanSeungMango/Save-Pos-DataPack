scoreboard objectives add save_pos trigger
scoreboard objectives add save_pos.armor_stand trigger
scoreboard objectives add save_pos.armor_stand.small trigger
scoreboard objectives add save_pos.end trigger

tellraw @a[gamemode=creative] [{"text":"[","color":"yellow"},{"text":"Save_Pos","color":"white"},{"text":"] ","color":"yellow"},{"text":"Datapack ","color":"white"},{"text":"Loaded","color":"green"}]

tellraw @a[gamemode=spectator] [{"text":"[","color":"yellow"},{"text":"Save_Pos","color":"white"},{"text":"] ","color":"yellow"},{"text":"Datapack ","color":"white"},{"text":"Loaded","color":"green"}]