extends Area2D

onready var animation: AnimationPlayer = get_node("Animation")

var velocity = 300
var intervalo = .3
var ultimo_disparo = 0

func _ready():
	set_process(true)
	pass


func _process(delta):

	var dir = 0
	var esq = 0
	
	if Input.is_action_pressed("dir"):
		dir = 1
		pass
	
	if Input.is_action_pressed("esq"):
		esq = -1
		pass
	
	if get_position().x >= 715:
		dir = 0
		pass
	
	if get_position().x <= 53:
		esq = 0
		pass
	
	set_position(get_position() + Vector2(1, 0) * velocity * delta * (dir + esq))
	pass

func on_bin_metal_area_entered(area):
	if area.is_in_group(Game.PLASTIC_GROUP):
		animation.play("success")
		area.queue_free()
		Game.metal_points += 1
		pass
	else:
		animation.play("error")
		area.queue_free()
		pass
	pass
