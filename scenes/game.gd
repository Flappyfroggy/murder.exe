extends Node2D
@onready var task_preload = preload("res://scenes/your_task.tscn")
@onready var riddle1_preload = preload("res://scenes/riddle_1.tscn")
@onready var riddle2_preload = preload("res://scenes/puzzle_2.tscn")
@onready var finishcase1_preload = preload("res://scenes/finished_murder_1.tscn")
var riddle1
var riddle2
var finishcase1
func _ready():
	var task = task_preload.instantiate()
	task.position = Vector2(1256,748)
	add_child(task)
func _process(_float) -> void:
	if e.taskshown and not e.riddle1shown:
		riddle1 = riddle1_preload.instantiate()
		riddle1.position = Vector2(1256,748)
		add_child(riddle1)
		e.riddle1shown = true
	if e.taskshown and e.riddle1_complete and not e.shownriddle2:
		riddle1.hide()
		riddle2 = riddle2_preload.instantiate()
		riddle2.position = Vector2(1256,748)
		add_child(riddle2)
		e.shownriddle2 = true
	if e.finishedcase1 and not e.shown_finishcase1:
		finishcase1 = finishcase1_preload.instantiate()
		finishcase1.position = Vector2(1256,748)
		add_child(finishcase1)
		e.shown_finishcase1 = true
