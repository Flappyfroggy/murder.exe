extends Control
@onready var animationo = $AnimationPlayer
func _ready() -> void:
	animationo.play("typewriter")
