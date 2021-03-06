extends Node2D

# from http://kidscancode.org/blog/2018/08/godot3_procgen1/
var width = 100     # in tiles
var height = 50     # in tiles

# get a reference to the map for convenience
onready var Map = $TileMap

func rand_tile_id():
	return rand_range(4,7)

func make_field():
	for x in range(width):
		for y in range(height):
			Map.set_cellv(Vector2(x,y), rand_tile_id())

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	make_field()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
