extends Area2D

var velocity = 200
var rot = 0

func _ready():
	add_to_group(Game.PLASTIC_GROUP)
	randomize()
	rot = rand_range(-1, 1)
	pass

func _process(delta):
	set_position(get_position() + Vector2(0, 1) * velocity * delta)
	rotate(rot * delta)
	pass


func on_notifier_screen_exited():
	queue_free()
	pass
