extends Control
@onready var animation = $AnimationPlayer
@onready var label = $VBoxContainer/murderer
@onready var timer = $Timer
@onready var correct = $Node/AudioStreamPlayer
@onready var wrong = $Node2/AudioStreamPlayer
func _ready():
	animation.play("typewriter")


func _on_enter_name_text_submitted(new_text: String) -> void:
	if new_text == "DRINK VENDOR":
		label.text = "An interesting discovery."
		correct.play()
		timer.start()
	if not new_text == "DRINK VENDOR" and not new_text == "HINT":
		label.text = "This doesn't seem right.. (RETRY)"
		wrong.play()
	if new_text == "HINT":
		label.text = "roman numerals..."


func _on_timer_timeout() -> void:
	e.to_puzzle4 = true
