extends KinematicBody2D

export (int) var speed = 100

var velocity = Vector2()
onready var timer = Timer.new()
onready var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	timer.set_wait_time(2)
	timer.connect("timeout", self, "randomize_movement")
	timer.autostart = true
	add_child(timer)
	
	print(velocity)
	
	
func _physics_process(delta):
	velocity = move_and_slide(velocity)

func randomize_movement():
	velocity.x = rng.randi_range(-1,1)
	velocity.y = rng.randi_range(-1,1)
	velocity = velocity.normalized() * speed
