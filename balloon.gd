extends Node3D

@export var score_to_give: int = 1
@export var clicks_to_pop: int = 5
@export var scale_increase_per_click: float = 0.1

var clicks: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SubViewport/HealthBar.value = 100
	clicks = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mouse_down():
	clicks += 1
	var health = 100 * float(clicks_to_pop - clicks) / clicks_to_pop
	$SubViewport/HealthBar.value = health
	scale += Vector3.ONE * scale_increase_per_click
	
