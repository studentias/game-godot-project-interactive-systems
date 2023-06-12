extends Node

const PAPER_GROUP = "papers"
const GLASS_GROUP = "glass"
const METAL_GROUP = "metals"
const PLASTIC_GROUP = "plastics"

var paper_points = 0 setget set_paper_points
var glass_points = 0 setget set_glass_points
var metal_points = 0 setget set_metal_points
var plastic_points = 0 setget set_plastic_points

signal paper_points_change
signal glass_points_change
signal metal_points_change
signal plastic_points_change

func _ready():
	pass

func set_paper_points(valor):
	if valor > 0:
		paper_points = valor
	emit_signal("paper_points_change")
	pass

func set_glass_points(valor):
	if valor > 0:
		glass_points = valor
	emit_signal("glass_points_change")
	pass

func set_metal_points(valor):
	if valor > 0:
		metal_points = valor
	emit_signal("metal_points_change")
	pass

func set_plastic_points(valor):
	if valor > 0:
		plastic_points = valor
	emit_signal("plastic_points_change")
	pass
