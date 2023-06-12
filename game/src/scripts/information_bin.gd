extends Control

onready var label: Label = get_node("%Label")
onready var labelVidro: Label = get_node("%LabelVidro")
onready var labelMetal: Label = get_node("%LabelMetal")
onready var labelPapel: Label = get_node("%LabelPapel")
onready var labelPlastico: Label = get_node("%LabelPlastico")

func _ready():
	for button in get_tree().get_nodes_in_group("bin"):
		button.connect("pressed", self, "on_button_pressed", [button])
		pass
	pass

func on_button_pressed(btn: Button) -> void:
	match btn.name:
		"Vidro":
			labelVidro.visible = true
			labelMetal.visible = false
			labelPlastico.visible = false
			labelPapel.visible = false
			label.text = "LIXEIRA VERDE: Residuos de vidros, Exemplos: Garrafas, copos e embalagens!"
		"Metal":
			labelMetal.visible = true
			labelVidro.visible = false
			labelPlastico.visible = false
			labelPapel.visible = false
			label.text = "LIXEIRA AMARELA: Residuos de metal, exemplos: Latas de refrigerantes, talheres e ferramentas!"
		"Plastico":
			labelPlastico.visible = true
			labelVidro.visible = false
			labelMetal.visible = false
			labelPapel.visible = false
			label.text = "LIXEIRA VERMELHA: Residuos de plásticos, Exemplos: Sacolas, embalagens e garrafas PET!"
		"Papel":
			labelPapel.visible = true
			labelVidro.visible = false
			labelMetal.visible = false
			labelPlastico.visible = false
			label.text = "LIXEIRA AZUL: Residuos de Papel, Exemplos: Revistas, caixas e embalagens de papelão!"
	pass

func _on_Button_pressed():
	var _game: bool = get_tree().change_scene("res://src/scenes/root.tscn")
	pass
