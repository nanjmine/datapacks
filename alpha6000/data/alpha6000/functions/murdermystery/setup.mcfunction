scoreboard objectives add ap_mm_charge dummy 
scoreboard objectives add ap_mm_sword minecraft.dropped:minecraft.iron_sword
scoreboard objectives add ap_mm_swordPitch dummy
scoreboard objectives add ap_mm_deathcount deathCount
team add ap_mm_murderer
team modify ap_mm_murderer collisionRule never
team modify ap_mm_murderer deathMessageVisibility never
team modify ap_mm_murderer friendlyFire true
team modify ap_mm_murderer nametagVisibility never
team add ap_mm_innocent
team modify ap_mm_innocent collisionRule never
team modify ap_mm_innocent deathMessageVisibility never
team modify ap_mm_innocent friendlyFire true
team modify ap_mm_innocent nametagVisibility never
team add ap_mm_detective
team modify ap_mm_detective collisionRule never
team modify ap_mm_detective deathMessageVisibility never
team modify ap_mm_detective friendlyFire true
team modify ap_mm_detective nametagVisibility never