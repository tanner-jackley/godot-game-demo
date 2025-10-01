extends Area2D

var hud
func _ready():
	hud = get_node("/root/main/Player/HUD")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		hud.score += 50
		queue_free()
