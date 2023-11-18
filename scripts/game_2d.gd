extends Node2D


@export var board_scene: PackedScene
var board: Node2D
var board_cells: int = 9
@export var player_scene: PackedScene
var number_of_players = 2
var players = []

var initial_positions = [
	Vector2i((board_cells / 2), 0),
	Vector2i((board_cells / 2), board_cells - 1),
	Vector2i(0, (board_cells / 2)),
	Vector2i(board_cells - 1, (board_cells / 2))
]

# Called when the node enters the scene tree for the first time.
func _ready():
	# Instantiate board
	instantiateBoard()

	# Instantiate players nodes
	instantiatePlayer()

	# Start the game

	pass

func instantiateBoard():
	board = board_scene.instantiate()
	add_child(board)

	board.initialize(board_cells)

func instantiatePlayer():
	for i in range(number_of_players):
		var p = player_scene.instantiate()
		players.push_back(p)
		add_child(p)
		p.set_coordinates(initial_positions[i])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
