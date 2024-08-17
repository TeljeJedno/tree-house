extends Node2D

@onready var camera: Camera2D = $"../Camera"


var CELL_COUNT = 32
var offset = get_viewport_rect().size.y / CELL_COUNT; 

func get_offset():
	return get_viewport_rect().size.y / CELL_COUNT
	
func _draw():
	redraw_elements()
	var half_width = get_viewport_rect().size.y / 2
	var half_height = get_viewport_rect().size.y / 2
	offset = get_offset()

	
	for i in range(CELL_COUNT+1):
			draw_line(Vector2(-half_width, -half_height+i*offset),Vector2(half_width, -half_height+i*offset ),Color.GRAY)
	for j in range(CELL_COUNT+1):
			draw_line(Vector2(-half_width+j*offset, -half_height),Vector2(-half_width+j*offset, half_height ),Color.GRAY)

	
func redraw_elements():
	for N : Node2D in self.get_children():
		N.scale = Vector2(4 * get_offset() / 256,4 * get_offset() / 256)
		print(N.scale)
		
