extends Node2D
@onready var task_preload = preload("res://scenes/your_task.tscn")
@onready var riddle1_preload = preload("res://scenes/riddle_1.tscn")
func _ready():
	var task = task_preload.instantiate()
	task.position = Vector2(1256,748)
	add_child(task)
func _process(_float) -> void:
	if e.taskshown and not e.riddle1shown:
		var riddle1 = riddle1_preload.instantiate()
		riddle1.position = Vector2(1256,748)
		add_child(riddle1)
		e.riddle1shown = true
