extends Node2D


func initialize(cells: int):
	var width: float = $Board.size.x / cells
	var height: float = $Board.size.y / cells

	for x in range(cells):
		for y in range(cells):
			var cell: ColorRect = ColorRect.new()

			var padding_x = width / 10
			var padding_y = height / 10

			cell.color = Color(0.5, 0.5, 0.5, 1)
			cell.position = Vector2((x * width) + (padding_x / 2), (y * height) + (padding_y / 2))
			cell.size = Vector2((width - padding_x), (height - padding_y))

			$Board.add_child(cell)
