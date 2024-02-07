extends Node

var object = null

var Sensivity : float = 10
var FixSensivity : float = 0.0001
var vsync : bool = false
var FullScreen : bool = true
var Volume : float = 0


func _ready():
	
	vsync = DisplayServer.window_get_vsync_mode()
	FullScreen = DisplayServer.window_get_mode()
	audio1()

func ChangeVsync():
	if vsync:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
func ChangeScreen():
	if FullScreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func audio1():
	var inst = AudioStreamPlayer.new()
	inst.volume_db = -5
	inst.stream = load("res://Sounds/forest.ogg")
	add_child(inst)
	inst.play()
	inst.finished.connect(audio1Finish.bind(inst))


func audio1Finish(inst : AudioStreamPlayer):
	inst.queue_free()
	audio1()


func BoxScare():
	var inst = AudioStreamPlayer.new()
	inst.volume_db = -5
	inst.stream = load("res://Sounds/boxscare.ogg")
	add_child(inst)
	inst.play()
	inst.finished.connect(BoxScareFinish.bind(inst))


func BoxScareFinish(inst : AudioStreamPlayer):
	inst.queue_free()
