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
	var board_rect = get_parent().board.get_node("Board")
	var board_cells = get_parent().board_cells

	var width = (board_rect.size.x / board_cells)
	var height = (board_rect.size.y / board_cells)

	position.x = pos.x * width
	position.y = pos.y * height

	$Circle.scale.x = 1.315 / board_cells
	$Circle.scale.y = 1.315 / board_cells
