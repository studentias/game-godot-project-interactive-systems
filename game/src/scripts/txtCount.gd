extends Label

func _process(_delta):
	self.text = String("Pontos: %d" % Game.points)
	pass
