extends Node2D

var coordinates: Vector2i
var board_size: float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_coordinates(pos: Vector2i):
	coordinates = pos
	var board_rect = get_parent().board.get_node("ColorRect")
	var board_cells = get_parent().board_cells
	
	position.x = pos.x * (board_rect.size.x / board_cells)
	position.y = pos.y * (board_rect.size.y / board_cells)
	
