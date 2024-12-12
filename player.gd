extends Node2D

@export var LaserTemplate : PackedScene

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.x = get_global_mouse_position().x
	self.position.x = clamp(self.position.x, 50, get_viewport_rect().size.x-50)
	
	if Input.is_action_just_pressed("tembak"):
		var laser : Node2D = LaserTemplate.instantiate()
		laser.position = self.position
		add_sibling(laser)


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("musuh"):
		self.queue_free()
		GlobalVar.is_game_over = true
