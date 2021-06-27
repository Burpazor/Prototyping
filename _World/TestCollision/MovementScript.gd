extends Node2D

export var speed = 200
var myArea: Area2D

func _ready():
	myArea = get_node("Area2D");


func _process(delta):
	var velocity = Vector2.ZERO
#	If you're new to computer graphics,
# 	it might seem odd that the positive y 
#	axis points downwards instead of upwards, 
#	as you probably learned in math class. 
#	However, this is common in 
#	most computer graphics applications.
#	source : https://docs.godotengine.org/en/stable/tutorials/math/vector_math.html
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta


func _on_Area2D_body_entered(body):
	print(body)
	print("Area body entered")

func _on_Area2D_area_entered(area):
	print(area)
	print("TestEntity Collision")

func _on_Area2D_area_exited(area):
	print("-----")
	print("Exited: ")
	print(area)
	print("-----")

func save():
	var save_dict = {
		"filename" : get_filename(),
		"parent" : get_parent().get_path(),
		"pos_x" : position.x, # Vector2 is not supported by JSON
		"pos_y" : position.y,
	}
	return save_dict
