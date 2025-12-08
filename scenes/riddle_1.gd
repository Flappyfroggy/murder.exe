extends Control
@onready var animationo = $AnimationPlayer
@onready var murderer_name = $VBoxContainer/murderer_name
@onready var timer = $to_next_puzzle
func _ready() -> void:
	animationo.play("typewriter")

func _on_enter_name_text_submitted(new_text: String) -> void:
	if new_text == "MASON":
		murderer_name.text = "You think the murderer's name is..." + new_text + "? We will investigate this."
		timer.start() #initiates timer to go to next puzzle after 2.5 sec
	if not new_text == "MASON" and not new_text == "HINT":
		murderer_name.text = "You think the murderer's name is..." + new_text + "? Are you sure? (please retry)"
	if new_text == "HINT":
		murderer_name.text = "What letter does each month start with?"


func _on_to_next_puzzle_timeout() -> void:
	pass # Replace with function body.
