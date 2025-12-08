extends Node2D
@onready var task_preload = preload("res://scenes/your_task.tscn")

func _ready():
	var task = task_preload.instantiate()
	task.position = Vector2(1272,768)
	add_child(task)
