extends Node2D

onready var base_layer = $BaseLayer
onready var creature = $Creature

var current_tile
var previous_tile
var creature_tilemap_pos = Vector2()

func _ready():
	print("Arena is ready.")
	
func _physics_process(delta):
	creature_tilemap_pos = base_layer.world_to_map(creature.global_position)
	current_tile = base_layer.get_cellv(creature_tilemap_pos)
	if current_tile != previous_tile:
		previous_tile = current_tile
		print("You're in a new tile. New environment effect is added here. Tile -> " + str(current_tile))
#	else: #add tile effect here
#		print("You're on tile: " + str(current_tile))
