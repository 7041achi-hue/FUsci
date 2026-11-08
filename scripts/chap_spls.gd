extends CanvasLayer

@onready var bg = $"/root/ChapSplash/bg" as ColorRect
@onready var chap = $"/root/ChapSplash/vbox/chap" as Label
@onready var chap_name = $"/root/ChapSplash/vbox/chap_name" as Label

func _ready() -> void:
	chap.modulate.a = 0
	chap_name.modulate.a = 0
	bg.modulate.a = 0

func play_chap_spls(chap_num: int, chap_title: String) -> void:
	chap.text = "Chapter %d" % chap_num
	chap_name.text = chap_title
	bg.modulate.a = 1
	var t: Tween = create_tween()
	t.tween_interval(1)
	t.tween_property(chap, "modulate:a", 1, 1.5)
	t.tween_interval(0.8)
	t.tween_property(chap_name, "modulate:a", 1, 1.5)
	t.tween_interval(2.5)
	t.tween_property(chap, "modulate:a", 0, 1.5)
	t.parallel().tween_property(chap_name, "modulate:a", 0, 1.5)
	t.parallel().tween_property(bg, "modulate:a", 0, 1.5)
	await t.finished

	print("splahed")
