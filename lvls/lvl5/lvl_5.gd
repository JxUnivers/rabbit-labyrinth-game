extends Node2D
var map = false

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("Map"):
		control()
func control():
	if map:
		$Camera2D.enabled = false
		$player/Camera2D.enabled = true
		Engine.time_scale = 1
	else:
		$player/Camera2D.enabled = false
		$Camera2D.enabled = true
		Engine.time_scale = 0
	map = !map


func _on_buttonmap_pressed():
	if map:
		$Camera2D.enabled = false
		$player/Camera2D.enabled = true
		Engine.time_scale = 1
	else:
		$player/Camera2D.enabled = false
		$Camera2D.enabled = true
		Engine.time_scale = 0
	map = !map
	

