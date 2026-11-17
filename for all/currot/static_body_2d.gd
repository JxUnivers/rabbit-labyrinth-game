extends Area2D

#@onready var anim = $AnimatedSprite2D

func _on_body_entered(_body):
	#if _body.name == "player":
	if $".":
		_body.animateWin()
	
