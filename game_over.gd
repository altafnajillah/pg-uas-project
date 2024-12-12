extends Label


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#pass
	self.visible = false
	
	if GlobalVar.is_game_over:
		self.visible = true
		
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().reload_current_scene()
		GlobalVar.reset()
		
