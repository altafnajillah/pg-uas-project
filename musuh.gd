extends Node2D

@export var speed = 100

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.y += speed * delta


func _on_area_entered(area: Area2D) -> void:
	#pass # Replace with function body.
	self.queue_free()
	GlobalVar.score += 10
