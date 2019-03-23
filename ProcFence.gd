extends Node2D

# from http://kidscancode.org/blog/2018/08/godot3_procgen1/
var tile_size = 64  # tile size (in pixels)
var offset_x = 10  # in tiles
var offset_y = 5   # in tiles
var width = 10     # in tiles
var height = 1     # in tiles

# get a reference to the map for convenience
onready var Map = $TileMap
onready var Set = Map.tile_set


func rand_tile_id():
	return rand_range(11,14)

func make_fence():
	Map.set_cellv(Vector2(offset_x, offset_y),
					Set.find_tile_by_name("fence_alt_0"))
	for x in range(width-2):
		for y in range(height):
			Map.set_cellv(Vector2(x + offset_x + 1, y + offset_y),
				Set.find_tile_by_name("fence_alt_1"))	
	Map.set_cellv(Vector2(offset_x + width - 1, offset_y),
					Set.find_tile_by_name("fence_alt_2"))

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	make_fence()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
