execute as @n[tag=currentplayer] run clear @s
item replace entity @n[tag=currentplayer] container.0 with carrot_on_a_stick[item_name='"Cancel"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ᴄᴀɴᴄᴇʟ"}'],custom_data={cancel:1},custom_model_data=6,attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

item replace entity @n[tag=currentplayer] container.4 with paper[custom_model_data=19,custom_data={port:1},custom_name='[{"italic":false,"text":"Port"},{"bold":true,"color":"gold","italic":false,"text":" 10⭐"}]',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴏɴ ᴏᴄᴇᴀɴ ᴛᴏ ᴘʟᴀᴄᴇ ᴀ ᴘᴏʀᴛ"}']]