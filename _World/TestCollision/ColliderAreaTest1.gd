extends Node2D

func _on_Area2D_area_entered(area):
	print(area)
	print("ColliderAreaTest Collision")

func save():
	var save_dict = {
		"filename" : get_filename(),
		"parent" : get_parent().get_path(),
		"pos_x" : position.x, # Vector2 is not supported by JSON
		"pos_y" : position.y,
	}
	return save_dict
