extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_home"):
		print("Test Save")
		$SaveNode.save_game()
	if Input.is_action_just_pressed("ui_end"):
		print("Test Load")
		$SaveNode.load_game()
