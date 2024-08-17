extends Node2D

@onready var camera: Camera2D = $"../Camera"


var CELL_COUNT = 32

func _draw():
	
	var half_width = get_viewport_rect().size.y / 2
	var half_height = get_viewport_rect().size.y / 2
	var offset = half_height*2/CELL_COUNT;

	
	for i in range(CELL_COUNT+1):
			draw_line(Vector2(-half_width, -half_height+i*offset),Vector2(half_width, -half_height+i*offset ),Color.GRAY)
	for j in range(CELL_COUNT+1):
			draw_line(Vector2(-half_width+j*offset, -half_height),Vector2(-half_width+j*offset, half_height ),Color.GRAY)
