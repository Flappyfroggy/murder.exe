extends Control
@onready var animation = $AnimationPlayer
@onready var timer = $Timer
@onready var hitman = $CanvasLayer
func _ready():
	animation.play("typewriter")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	timer.start()


func _on_timer_timeout() -> void:
	e.to_puzzle3 = true
	hitman.hide()
