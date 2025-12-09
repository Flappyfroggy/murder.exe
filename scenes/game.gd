extends Node2D
@onready var task_preload = preload("res://scenes/your_task.tscn")
@onready var riddle1_preload = preload("res://scenes/riddle_1.tscn")
@onready var riddle2_preload = preload("res://scenes/puzzle_2.tscn")
@onready var finishcase1_preload = preload("res://scenes/finished_murder_1.tscn")
@onready var puzzle3_preload = preload("res://scenes/puzzle_3.tscn")
@onready var puzzle4_preload = preload("res://scenes/puzzle_4.tscn")
@onready var finishcase2_preload = preload("res://scenes/finish_case_2.tscn")
@onready var puzzle5_preload = preload("res://scenes/puzzle_5.tscn")
@onready var thankyou_preload = preload("res://scenes/thankyou.tscn")
var riddle1
var riddle2
var finishcase1
var puzzle3
var puzzle4
var finishcase2
var puzzle5
var thankyou
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
		riddle2.hide()
		finishcase1 = finishcase1_preload.instantiate()
		finishcase1.position = Vector2(1256,748)
		add_child(finishcase1)
		e.shown_finishcase1 = true
	if e.to_puzzle3 and not e.shown_puzzle3:
		finishcase1.hide()
		e.shown_puzzle3 = true
		puzzle3 = puzzle3_preload.instantiate()
		puzzle3.position = Vector2(1256,748)
		add_child(puzzle3)
	if e.to_puzzle4 and not e.shown_puzzle4:
		puzzle3.hide()
		puzzle4 = puzzle4_preload.instantiate()
		puzzle4.position = Vector2(1256,748)
		add_child(puzzle4)
		e.shown_puzzle4 = true
	if e.to_finishcase2 and not e.shown_finishcase2:
		puzzle4.hide()
		e.shown_finishcase2 = true
		finishcase2 = finishcase2_preload.instantiate()
		finishcase2.position = Vector2(1256,748)
		add_child(finishcase2)
	if e.to_puzzle5 and not e.shown_puzzle5:
		finishcase2.hide()
		e.shown_puzzle5 = true
		puzzle5 = puzzle5_preload.instantiate()
		puzzle5.position = Vector2(1256,748)
		add_child(puzzle5)
	if e.to_thankyou and not e.shown_thankyou:
		e.shown_thankyou = true
		puzzle5.hide()
		thankyou = thankyou_preload.instantiate()
		add_child(thankyou)
		thankyou.position = Vector2(1256,748)
