extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Thanks for playing! \n\n Level 1 Score: " + str(Global.level1_score) + " \n\n Level 2 Time: " + str(Global.level2_time)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_tree().change_scene("res://UI/Menu.tscn")
