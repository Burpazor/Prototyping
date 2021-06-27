extends Area2D

func _ready():
	self.set_monitoring(true)
	print("Vision ready.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(self.get_overlapping_areas())
