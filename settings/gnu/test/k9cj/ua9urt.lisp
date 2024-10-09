;; name project ua9urt
;; name program ua9
;; name extension urt
;; name version 0.1.0

;; description
;; This project is a simple text-based adventure game in the style of Ultima 9.

;; requires
;; - lib/ua9/common.urt
;; - lib/ua9/rooms.urt

;; import
;; - lib/ua9/common.urt
;; - lib/ua9/rooms.urt

;; namespace
;; ua9

;; define
;; rooms
;; - start
;; - cave
;; - forest
;; - castle
;; - dragon_lair

;; start :: Room
;; description
;; A small clearing where you can see a path leading east.
(start = {
  description = "You are in a small clearing, with a path leading east."
  exits = {
   east = cave
  }
})


;; cave :: Room
;; description
;; A dark and gloomy cave with cracked walls and mossy floor.
(cave = {
  description = "You are in a dark and gloomy cave, filled with moss and cracked walls."
  exits = {
   west = start
   south = forest
   east = dragon_lair
  }
  items = {
   treasure = "A shiny golden treasure chest."
  }
  characters = {
   goblin = "A frightened goblin lurks in the shadows."
  }
  triggers = {
   goblin_attack = "goblin attacks you!"
  }
  on_enter = "You hear a faint sound of footsteps coming from the cave."
  on_exit = "You hear a soft rustling sound as the cave exits."
  on_trigger = "goblin attacks you!"
  on_action = "You find a shiny golden treasure chest!"
  on_item_take = "You take the shiny golden treasure chest."
  on_character_talk = "Goblin: Ah, a foolish adventurer like yourself. I'll give you this treasure if you prove yourself worthy."
  on_character_action = "Goblin: You've proven yourself worthy, I'll give you the treasure."
  on_character_attack = "Goblin: Prepare to die, mortal!"
  on_character_death = "Goblin: You have failed me, and I shall take your treasure."
  on_character_escape = "Goblin: I'm afraid you're not worthy of this treasure."
  on_character_escape_attempt = "Goblin: I shall not give you this treasure, and you shall die!"
  on_character_escape_success = "Goblin: You have escaped, but I shall take your treasure."
  on_character_escape_failure = "Goblin: I shall not give you this treasure, and you shall die!"
  on_character_escape_final_attempt = "Goblin: I shall take your treasure, and you shall die!"
  on_character_escape_final_success = "Goblin: You have escaped, and I shall take your treasure."
  on_character_escape_final_failure = "Goblin: I shall not give you this treasure, and you shall die!"
  on_character_escape_final_victory = "Goblin: You have escaped, and I shall take your treasure. Congratulations!"
  on_character_escape_final_defeat = "Goblin: I shall not give you this treasure, and you shall die!"
  on_character_escape_final_victory_condition = "You have found the treasure chest."
  on_character_escape_final_defeat_condition = "You have not found the treasure chest."
  on_character_escape_final_victory_action = "You find a shiny golden treasure chest!"
  on_character_escape_final_defeat_action = "You do not find the shiny golden treasure chest."
  on_character_escape_final_victory_message = "Congratulations, you have found the treasure chest!"
  on_character_escape_final_defeat_message = "You have not found the treasure chest."
  on_character_escape_final_victory_condition_message = "You have found the treasure chest."
  on_character_escape_final_defeat_condition_message = "You have not found the treasure chest."
  on_character_escape_final_victory_condition_action = "You find a shiny golden treasure chest!"
  on_character_escape_final_defeat_condition_action = "You do not find the shiny golden treasure chest."
  on_character_escape_final_victory_condition_message_action = "You find a shiny golden treasure chest!")


;; forest :: Room
;; description
;; A dense and dark forest filled with gloom and moss.
(forest = {
  description = "You are in a dense and dark forest, filled with gloom and moss."
  exits = {
   west = cave
   north = castle
   east = dragon_lair
  }
  items = {
   torch = "A shiny torch."
  }
  characters = {
   wolf = "A frightened wolf lurks in the shadows."
  }
  triggers = {
   wolf_attack = "wolf attacks you!"
  }
  on_enter = "You hear a faint sound of footsteps coming from the forest."
  on_exit = "You hear a soft rustling sound as the forest exits."
  on_trigger = "wolf attacks you!"
  on_action = "You find a shiny torch."
  on_item_take = "You take the shiny torch."
  on_character_talk = "Wolf: Ah, a foolish adventurer like yourself. I'll give you this torch if you prove yourself worthy."
  on_character_action = "Wolf: You've proven yourself worthy, I'll give you the torch."
  on_character_attack = "Wolf: Prepare to die, mortal!"
  on_character_death = "Wolf: You have failed me, and I shall take your torch."
  on_character_escape = "Wolf: I'm afraid you're not worthy of this torch."
  on_character_escape_attempt = "Wolf: I shall not give you this torch, and you shall die!"
  on_character_escape_success = "Wolf: You have escaped, but I shall take your torch."
  on_character_escape_failure = "Wolf: I shall not give you this torch, and you shall die!"
  on_character_escape_final_attempt = "Wolf: I shall take your torch, and you shall die!"
  on_character_escape_final_success = "Wolf: You have escaped, and I shall take your torch."
  on_character_escape_final_failure = "Wolf: I shall not give you this torch, and you shall die!"
  on_character_escape_final_victory = "Wolf: You have escaped, and I shall take your torch. Congratulations!"
  on_character_escape_final_defeat = "Wolf: I shall not give you this torch, and you shall die!"
  on_character_escape_final_victory_condition = "You have found the torch."
  on_character_escape_final_defeat_condition = "You have not found the torch."
  on_character_escape_final_victory_action = "You find a shiny torch."
  on_character_escape_final_defeat_action = "You do not find the shiny torch."
  on_character_escape_final_victory_condition_message = "Congratulations, you have found the torch!"
  on_character_escape_final_defeat_condition_message = "You have not found the torch."
  on_character_escape_final_victory_condition_action = "You find a shiny torch."
  on_character_escape_final_defeat_condition_action = "You do not find the shiny torch."
  on_character_escape_final_victory_condition_message_action = "You find a shiny torch!")

