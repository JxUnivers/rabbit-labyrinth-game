extends Node2D

@onready var labbmap = $Control
var map = false
var proverkapause = true
var pausenajal = true

#ниже то что было
func _process(_delta):
	if Input.is_action_just_pressed("Map") and pausenajal:
		control()
	if Input.is_action_just_pressed("pausebutton"):
		pausenajal = false
		print('hi')
		pausemenu()
# выше то что было
func control():
	if map:
		$Camera2D.enabled = false
		$Node2D/Camera2Dplayer2.enabled = true 
		labbmap.hide()
		#get_tree().paused = false
		Engine.time_scale = 1
		
	else:
		$Node2D/Camera2Dplayer2.enabled = false
		$Camera2D.enabled = true
		labbmap.show()
		#await get_tree().create_timer(0.0001).timeout
		#get_tree().paused = true
		Engine.time_scale = 0
	map = !map
		
func _on_buttonmap_pressed():
		control2()
func control2():
	if map:
		$Camera2D.enabled = false
		$Node2D/Camera2Dplayer2.enabled = true
		labbmap.hide()
		#get_tree().paused = false
		Engine.time_scale = 1
		
	else:
		$Node2D/Camera2Dplayer2.enabled = false
		$Camera2D.enabled = true
		labbmap.show()
		#await get_tree().create_timer(0.0001).timeout
		#get_tree().paused = true
		Engine.time_scale = 0
	map = !map
	#ниже пауза обычная
	
@onready var pause_menu = $CanvasLayer/pause
var paused = false
func _procces2(_delta):
	if Input.is_action_just_pressed("pausebutton"):
		print('hi')
		pausemenu()
func pausemenu():
	if paused:
		pausenajal = true
		pause_menu.hide()
		#$Camera2D.enabled = false
		get_tree().paused = false
		
		#Engine.time_scale = 1
	else:
		pause_menu.show()
		#$Camera2D.enabled = true
		get_tree().paused = true
		#Engine.time_scale = 0
	paused = !paused


func _on_button_pressed():
	if paused:
		pausenajal = true
		pause_menu.hide()
		#$Camera2D.enabled = false
		get_tree().paused = false
		
		#Engine.time_scale = 1
	else:
		pause_menu.show()
		#$Camera2D.enabled = true
		get_tree().paused = true
		#Engine.time_scale = 0
	paused = !paused
