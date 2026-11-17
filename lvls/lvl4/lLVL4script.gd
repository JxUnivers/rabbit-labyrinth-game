extends Node2D

var map = false

func _process(_delta):
	if Input.is_action_just_pressed("Map"):
		control()
func control():
	if map:
		$Camera2D.enabled = false
		$Node2D/Camera2Dhero.enabled = true
		Engine.time_scale = 1
	else:
		$Node2D/Camera2Dhero.enabled = false
		$Camera2D.enabled = true
		Engine.time_scale = 0
	map = !map


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


func _on_buttonmap_pressed():
	if map:
		$Camera2D.enabled = false
		$Node2D/Camera2Dhero.enabled = true
		Engine.time_scale = 1
	else:
		$Node2D/Camera2Dhero.enabled = false
		$Camera2D.enabled = true
		Engine.time_scale = 0
	map = !map

func _on_static_body_2d_body_entered(_body):
	if $Node2D:
		await get_tree().create_timer(2).timeout
		get_tree().change_scene_to_file("res://lvls/lvl5/lvl_5.tscn")

