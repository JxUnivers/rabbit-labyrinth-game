extends Node2D




func _ready():
	$CanvasLayer2.visible = false
	$CanvasLayer3.visible = false
	$CanvasLayer4.visible = false
	$CanvasLayer5.visible = false
	
func _process(_delta):
	pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
#button1
func _on_button_pressed():
	get_tree().change_scene_to_file("res://lvls/lvl2(1)/lvl2.tscn")



