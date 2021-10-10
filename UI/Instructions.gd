extends Control


var cd = 5


# Called when the node enters the scene tree for the first time.
func _ready():
	update_label()

func _on_Timer_timeout():
	cd -= 1
	update_label()
	
func update_label():
	$countdown.text = "Starting in " + str(cd)
	if cd <= 0:
		hide()
		$CDTimer.stop()
		get_tree().paused = false
