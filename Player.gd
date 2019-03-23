extends Node2D

const incr = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func next_x():
	if Input.is_action_pressed("ui_right"):
		return position.x + incr
	elif Input.is_action_pressed("ui_left"):
		return position.x - incr
	else:
		return position.x

func next_y():
	if Input.is_action_pressed("ui_down"):
		return position.y + incr
	elif Input.is_action_pressed("ui_up"):
		return position.y - incr
	else:
		return position.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = Vector2(next_x(), next_y())
