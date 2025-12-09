extends Control
@onready var animation = $AnimationPlayer
@onready var suspect1 = $VBoxContainer/Label
@onready var suspect2 = $VBoxContainer/Label2
@onready var suspect3 = $VBoxContainer/Label3
@onready var murderer = $"VBoxContainer/murderer_name"
@onready var timer = $Timer
func _ready():
	animation.play("typewriter")

func _on_option_button_item_selected(index: int) -> void:
	if index == 0:
		suspect1.text = "Suspect One Says: I was just passing by, heading to my friend's house!"
	if index == 1:
		suspect1.text = "Suspect One Says: I don't know them at all!"


func _on_option_button_2_item_selected(index1: int) -> void:
	if index1 == 0:
		suspect2.text = "Suspect Two Says: It was dark out, but i saw the blood splatter from my apartment!"
	if index1 == 1:
		suspect2.text = "Suspect Two Says: I don't know who died."



func _on_option_button_3_item_selected(index2: int) -> void:
	if index2 == 0:
		suspect3.text = "Suspect Three Says: I was in the mall nearby."
	if index2 == 1:
		suspect3.text = "Suspect Three says: We were friends."


func _on_enter_name_text_submitted(new_text: String) -> void:
	if new_text == "2":
		murderer.text = "That sounds right. We can take it from here."
		timer.start()
	if not new_text == "2" and not new_text == "HINT": 
		murderer.text = "Are you sure? (RETRY)"
	if new_text == "HINT":
		murderer.text = "As mentioned previously, the incident occured during daytime."


func _on_timer_timeout() -> void:
	e.finishedcase1 = true
