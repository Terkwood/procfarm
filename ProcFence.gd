extends Node2D

# from http://kidscancode.org/blog/2018/08/godot3_procgen1/
var tile_size = 64  # tile size (in pixels)
var offset_x = 10  # in tiles
var offset_y = 5   # in tiles
var width = 10     # in tiles
var height = 1     # in tiles

# get a reference to the map for convenience
onready var Map = $TileMap

func rand_tile_id():
	return rand_range(11,14)

func make_fence():
	Map.clear()
	var valid_tiles = []
	for x in range(width):
		for y in range(height):
			Map.set_cellv(Vector2(x + offset_x,y + offset_y), rand_tile_id())

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	make_fence()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
