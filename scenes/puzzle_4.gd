extends Control
@onready var label = $VBoxContainer/murderer_name
@onready var animation = $AnimationPlayer
@onready var timer = $Timer
func _ready() -> void:
	animation.play("typewriter")

func _on_enter_name_text_submitted(new_text: String) -> void:
	if new_text == "LILA":
		label.text = "You seem to be right."
		timer.start()
	if not new_text == "LILA" and not new_text == "HINT":
		label.text = "I.. don't think that's right."
	if new_text == "HINT":
		label.text = "the blood found near the incident was dried."


func _on_timer_timeout() -> void:
	e.to_finishcase2 = true
