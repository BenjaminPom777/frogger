extends Control

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("confirm"):
		call_deferred("change_scene")	
	
	
	
func change_scene():
	get_tree().change_scene_to_file("res://scenes/game.tscn")	
