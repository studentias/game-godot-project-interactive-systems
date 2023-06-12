extends Node


func generate_glasses(vl):
	return get_children()[vl].duplicate()
	pass

func generate_randon():
	var size: int = get_children().size()
	return get_children()[randi() % size].duplicate()
	pass
