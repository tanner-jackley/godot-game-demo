extends Area2D

@onready var checkpoint_manager = get_node("/root/main/CheckpointManager")
@onready var player = get_node("/root/main/Player")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		kill_player()
		
func kill_player():
	player.global_position = checkpoint_manager.last_location
	
