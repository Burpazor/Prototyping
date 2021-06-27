extends KinematicBody2D

var motion = Vector2(0,0)
var speed = 200

func _ready():
	pass 


func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	elif Input.is_action_pressed("ui_up"):
		motion.y = -speed
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
	else:
		motion.y = 0
		motion.x = 0
		
	move_and_slide(motion, Vector2(0, 0), false, 4, 0.785, true)

	for index in get_slide_count():
		var collision = get_slide_collision(index)
		print(collision)
