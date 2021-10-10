extends Control

var bgM = get_node_or_null("res://Assets/Plains 01.ogg")

func _ready():
	pass


func _on_Play_pressed():
	$buttonSound.play()
	var _target = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	$buttonSound.play()
	get_tree().quit()


