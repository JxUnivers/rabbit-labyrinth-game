extends CharacterBody2D

@export var move_speed: float = 200
@export var starting_direction: Vector2 = Vector2(0, 1)
#parameters/idle/blend_position

@onready var animation_tree = $AnimationTree
@onready var state_machine = animation_tree.get("parameters/playback")
func _ready():
	update_animation_parameters(starting_direction)

func _physics_process(_delta):
	var horizontal_input = Input.get_action_strength("right") - Input.get_action_strength("left")
	var vertical_input = Input.get_action_strength("down") - Input.get_action_strength("up")

	var input_direction = Vector2.ZERO
	if(Input.is_action_pressed("ui_right") or Input.is_action_pressed("right")):
			input_direction.x += 1
	if(Input.is_action_pressed("ui_left") or Input.is_action_pressed("left")):
			input_direction.x -= 1
	if(Input.is_action_pressed("ui_down") or Input.is_action_pressed("down")):
			input_direction.y += 1
	if(Input.is_action_pressed("ui_up") or Input.is_action_pressed("up")):
			input_direction.y -= 1

	
	update_animation_parameters(input_direction)

	velocity = input_direction.normalized() * move_speed
	
	move_and_slide()
	
	pick_new_state()
	
func update_animation_parameters(move_input: Vector2):
	if(move_input != Vector2.ZERO):
		animation_tree.set("parameters/walk/blend_position", move_input)
		animation_tree.set("parameters/idle/blend_position", move_input)
func pick_new_state():
	if (velocity != Vector2.ZERO):
		state_machine.travel("walk")
	else:
		state_machine.travel("idle")
#ниже сам пишу все


@onready var anim = $AnimatedSprite2D
#func _on_static_body_2d_body_entered(_body):
	#move_speed = 0
	#$AnimatedSprite2D.visible = true
	#anim.play("idle_win")

func animateWin():
	move_speed = 0
	$AnimatedSprite2D.visible = true
	anim.play("idle_win")
