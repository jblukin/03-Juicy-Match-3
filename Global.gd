extends Node

var score = 0
var time = 0

var level = 1
var level1_default = 60
var level2_default = 1000

var level1_score = 0
var level2_time = 0

signal score_changed
signal time_changed
var scores = {
	0:0,
	1:0,
	2:0,
	3:10,
	4:20,
	5:50,
	6:100,
	7:200,
	8:300,
	9:1000
}

func _ready():
	if level == 1:
		time = level1_default

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()

func change_score(s):
	score += s
	var camera = get_node_or_null("/root/Game/Camera")
	if camera:
		camera.add_trauma(0.5)
	if level == 2:
		if score >= level2_default:
			get_tree().change_scene("res://UI/EndScreen.tscn")
			score = 0
			level2_time = time
			time = level1_default
			level = 1
	emit_signal("score_changed")
	
func change_time():
	if level == 1:
		time -= 1
		if time <= 0:
			level1_score = score
			var _scene = get_tree().change_scene("res://Game2.tscn")
			level = 2
			score = 0
	else:
		time += 1
	emit_signal("time_changed")
