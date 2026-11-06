extends Node

func _ready() -> void:
	Dialogic.start("intro")
	await Dialogic.timeline_ended
	get_tree().quit()
