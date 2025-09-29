extends CharacterBody2D

var speed = 100
@onready var player = $"../Player"
var follow

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if follow:
		if player.global_position.x < global_position.x:
			velocity.x = -speed
		elif player.global_position.x > global_position.x:
			velocity.x = speed
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		follow = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		follow = false
