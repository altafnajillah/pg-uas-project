extends Node2D

@export var musuhTemplate : PackedScene

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:

func _on_timer_timeout() -> void:
	var musuh : Node2D = musuhTemplate.instantiate()
	musuh.position.y = -50
	musuh.position.x = randi_range(50, get_viewport_rect().size.x-50)
	add_child(musuh)
