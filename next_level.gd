extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var current_scene_file = get_tree().current_scene.scene_file_path
		var number = current_scene_file.to_int() + 1
		var next_scene = "res://godot-skeleton-main/levels/level_"+str(number)+".tscn"
		get_tree().change_scene_to_file(next_scene)
