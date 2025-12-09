extends Control
@onready var timer = $Timer
func _ready():
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().quit()
