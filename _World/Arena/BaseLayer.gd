tool extends TileMap

const BASELAYER = {
	0 : {
		"name" : "sand",
		"color" : Color8(218,165,32)
	},
	1 : {
		"name" : "water",
		"color" : Color8(65,105,225)
	},
	2 : {
		"name" : "ice",
		"color" : Color8(0,191,255)
	},
	3 : {
		"name" : "grass",
		"color" : Color8(0,255,127)
	},
	4 : {
		"name" : "lava",
		"color" : Color8(255,69,0)
	}
} 

func _ready():
	for tile in BASELAYER:
		print(BASELAYER[tile]["color"])
		self.tile_set.tile_set_modulate(tile, BASELAYER[tile]["color"])



