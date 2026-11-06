extends CanvasLayer

# @onready var bg = $ColorRect as ColorRect
# @onready var chap = $VBoxContainer/Chap as Label
# @onready var chap_name = $VBoxContainer/Name as Label

func _ready() -> void:
	# chap.modulate.a = 0
	# chap_name.modulate.a = 0
	$"/root/Signals".chap_spls.connect(play_chap_spls)

func play_chap_spls(chap_num: int, chap_title: String) -> void:
	print("splahed")
