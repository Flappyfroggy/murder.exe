extends Control
@onready var animationo = $AnimationPlayer
@onready var timer = $Timer
func _ready():
	animationo.play("Typewriter")


func _on_animation_player_animation_finished(Typewriter) -> void:
	timer.start()

func _on_timer_timeout() -> void:
	queue_free()
	e.taskshown = true
