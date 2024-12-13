extends Node2D

@export var speed = 100

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalVar.score < 300:
		self.position.y += speed * delta
	elif GlobalVar.score < 500:
		self.position.y += speed * delta * 1.5
	elif GlobalVar.score < 700:
		self.position.y += speed * delta * 2
	elif GlobalVar.score < 900:
		self.position.y += speed * delta * 2.5
	else : 
		self.position.y += speed * delta * 3
		
	var right = true	
	
	if GlobalVar.score < 200:
		pass
	elif GlobalVar.score < 300 :
		if GlobalVar.to_right == true:
			self.position.x += speed * delta * 0.25
			var view = 220
			if self.position.x > (view-50):
				GlobalVar.to_right = false
		else :
			self.position.x -= speed * delta * 0.25
			if self.position.x < 50:
				GlobalVar.to_right = true
	elif GlobalVar.score < 400 :
		pass
	elif GlobalVar.score < 500 :
		if GlobalVar.to_right == true:
			self.position.x += speed * delta * 0.5
			var view = 220
			if self.position.x > (view-50):
				GlobalVar.to_right = false
		else :
			self.position.x -= speed * delta * 0.5
			if self.position.x < 50:
				GlobalVar.to_right = true
	elif GlobalVar.score < 600 :
		pass
	elif GlobalVar.score < 700 :
		if GlobalVar.to_right == true:
			self.position.x += speed * delta * 0.75
			var view = 220
			if self.position.x > (view-50):
				GlobalVar.to_right = false
		else :
			self.position.x -= speed * delta * 0.75
			if self.position.x < 50:
				GlobalVar.to_right = true
	elif GlobalVar.score < 800 :
		pass
	else :
		if GlobalVar.to_right == true:
			self.position.x += speed * delta * 1
			var view = 220
			if self.position.x > (view-50):
				GlobalVar.to_right = false
		else :
			self.position.x -= speed * delta * 1
			if self.position.x < 50:
				GlobalVar.to_right = true

func _on_area_entered(area: Area2D) -> void:
	#pass # Replace with function body.
	self.queue_free()
	GlobalVar.score += 10
