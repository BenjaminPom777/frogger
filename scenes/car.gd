extends Area2D


var directrion = Vector2.RIGHT
var speed = 200
var colors = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png")
	]

func _ready() -> void:
	if position.x > 10:
		directrion = Vector2.LEFT
		$Sprite2D.texture = colors.pick_random()
		$Sprite2D.flip_h = 1
		
	

func _process(delta: float) ->void:
	position +=directrion * speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
