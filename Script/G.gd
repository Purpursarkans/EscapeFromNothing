extends Node

var object = null

var Sensivity : float = 10
var FixSensivity : float = 0.0001
var vsync : bool = false


func _ready():
	#get_window().size = Vector2(320, 240)
	#DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	pass

func ChangeVsync():
	if vsync:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)


