tool extends Sprite

export(Shape2D) var shape setget set_shape, get_shape
export(Color) var color

func _ready():
	print(self.get_canvas_item())
	print(self.shape)
	pass # Replace with function body.

func _draw():
	shape.draw(self.get_canvas_item(), self.color)
	
func set_shape(s):
	shape = s
	
func get_shape():
	update()
	return shape
	
