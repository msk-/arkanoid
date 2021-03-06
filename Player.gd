extends KinematicBody2D

var motion = Vector2()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else:
		motion.x = 0
	
	move_and_slide(motion)
