extends Node

func _ready() -> void:
	Dialogic.start("intro")
	await Dialogic.timeline_ended
	await ChapSplash.play_chap_spls(1, "The Begining")
	get_tree().quit()
