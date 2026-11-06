extends Node

func _ready() -> void:
	Dialogic.start("intro")
	await Dialogic.timeline_ended
	Signals.chap_spls.emit(1, "The Beginning")
	get_tree().quit()
