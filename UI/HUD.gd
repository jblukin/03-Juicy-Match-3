extends Control

func _ready():
	var _score_changed = Global.connect("score_changed",self,"_on_score_changed")
	_on_score_changed()
	var _time_changed = Global.connect("time_changed",self,"_on_time_changed")
	_on_time_changed()
	get_tree().paused = true

func _on_score_changed():
	$Score.text = "Score: " + str(Global.score)
	
func _on_time_changed():
	$Time.text = "Time: " + str(Global.time)


func _on_Timer_timeout():
	Global.change_time()
