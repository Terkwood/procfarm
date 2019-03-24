extends KinematicBody2D

const WALK_SPEED = 400

var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.y = -WALK_SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.y =  WALK_SPEED
	else:
		velocity.y = 0
	move_and_slide(velocity, Vector2(0, 0))