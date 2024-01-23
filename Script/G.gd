extends Node

var object = null

func _process(delta):		
	if Input.is_action_just_pressed("menu_escape"):
		get_tree().quit()
