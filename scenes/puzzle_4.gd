extends Control
@onready var label = $VBoxContainer/murderer_name
@onready var animation = $AnimationPlayer
@onready var timer = $Timer
@onready var correct = $Node/AudioStreamPlayer
@onready var wrong = $Node2/AudioStreamPlayer
func _ready() -> void:
	animation.play("typewriter")

func _on_enter_name_text_submitted(new_text: String) -> void:
	if new_text == "LILA":
		label.text = "You seem to be right."
		correct.play()
		timer.start()
	if not new_text == "LILA" and not new_text == "HINT":
		label.text = "I.. don't think that's right."
		wrong.play()
	if new_text == "HINT":
		label.text = "the blood found near the incident was dried."


func _on_timer_timeout() -> void:
	e.to_finishcase2 = true
