extends Control


func _ready():
	for button in get_tree().get_nodes_in_group("buttons"):
		button.connect("pressed", self, "on_button_pressed", [button])
		pass
	pass

func on_button_pressed(btn: Button) -> void:
	match btn.name:
		"Play":
			var _game: bool = get_tree().change_scene("res://src/scenes/information_bin.tscn")
		"Info":
			var _game: bool = get_tree().change_scene("res://src/scenes/about.tscn")
		"Instructions":
			var _game: bool = get_tree().change_scene("res://src/scenes/instructions.tscn")
	pass
