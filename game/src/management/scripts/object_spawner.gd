extends Node

onready var er: Dictionary = {
	0: preload("res://src/bin_metais/scenes/metais.tscn"),
	1: preload("res://src/bin_vidros/scenes/vidros.tscn"),
	2: preload("res://src/bin_plastico/scenes/plasticos.tscn"),
	3: preload("res://src/bin_paper/scenes/papeis.tscn")
}

onready var metais

func _process(_delta):
	metais = er[randi() % er.size()].instance()
	pass

func on_timeout():
	
	get_node("Timer").set_wait_time(rand_range(1, 3))

	var prod = metais.generate_randon()

	prod.set_position(Vector2(rand_range(100, 668), -40))

	get_owner().add_child(prod)
	pass
