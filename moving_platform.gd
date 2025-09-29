extends Path2D

@onready var animation = $AnimationPlayer

func _ready():
	animation.play("movement")
