extends Node2D


func _ready():
	pass


func on_button_pressed():
	var _game: bool = get_tree().change_scene("res://src/scenes/level.tscn")
	pass
