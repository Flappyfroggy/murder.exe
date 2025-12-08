extends Control
@onready var animationo = $AnimationPlayer
func _ready():
	animationo.play("Typewriter")
