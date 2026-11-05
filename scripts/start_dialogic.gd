extends Node

func _ready() -> void:
	Dialogic.start("dialogic/intro")
	await Dialogic.timeline_ended
	get_tree().quit()

