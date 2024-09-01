extends Node3D

@export var score_to_give: int = 1
@export var clicks_to_pop: int = 5
@export var scale_increase_per_click: float = 0.1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mouse_down():
	clicks_to_pop -= 1
	scale += Vector3.ONE * scale_increase_per_click
