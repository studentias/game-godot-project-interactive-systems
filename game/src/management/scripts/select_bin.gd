extends Node

onready var metal = get_node("Bin_metal")
onready var paper = get_node("Bin_papel")
onready var plastic = get_node("Bin_plastico")
onready var glass = get_node("Bin_vidro")

func _physics_process(_delta):

	if Input.is_action_pressed("metal"):
		metal.visible = true
		paper.visible = false
		glass.visible = false
		plastic.visible = false
		pass
#
	if Input.is_action_pressed("paper"):
		paper.visible = true
		metal.visible = false
		glass.visible = false
		plastic.visible = false
		pass
#
	if Input.is_action_pressed("plastic"):
		plastic.visible = true
		metal.visible = false
		glass.visible = false
		paper.visible = false
		pass
#
	if Input.is_action_pressed("glass"):
		glass.visible = true
		metal.visible = false
		paper.visible = false
		plastic.visible = false
		pass
	pass
