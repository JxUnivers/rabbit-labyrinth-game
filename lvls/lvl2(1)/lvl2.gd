extends Node2D
var map = false

#говно выше это типа открыть лвл ааа
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("Map"):
		control()


func _on_buttonmap_pressed():
	if map:
		$Camera2D.enabled = false
		$player/Camera2Dplayer.enabled = true
		Engine.time_scale = 1
	else:
		$player/Camera2Dplayer.enabled = false
		$Camera2D.enabled = true
		Engine.time_scale = 0
	map = !map

func control():
	if map:
		$Camera2D.enabled = false
		$player/Camera2Dplayer.enabled = true
		Engine.time_scale = 1
	else:
		$player/Camera2Dplayer.enabled = false
		$Camera2D.enabled = true
		Engine.time_scale = 0
	map = !map
	




func _on_currot_body_entered(_body):
	if $player:
		await get_tree().create_timer(2).timeout
		get_tree().change_scene_to_file("res://lvls/lvl3/lvl3norm.tscn")
		

		


func _on_button_pressed():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://lvls/lvl1MENU/lvl1.tscn")
	
