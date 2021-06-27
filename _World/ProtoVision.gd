extends Area2D

func _ready():
	self.set_monitoring(true)
	print("ProtoVision")
	
func _physics_process(delta):
	print(get_overlapping_bodies())
