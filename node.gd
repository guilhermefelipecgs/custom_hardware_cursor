extends Node

var cursors = ['arrow', 'arrow2']

var current_cursor = 'arrow'
var current_size = 64
var hotspot = Vector2()
var toggle = true

func _process(delta):
	$cursor.position = get_viewport().get_mouse_position() - hotspot

func update_cursor():
	if toggle:
		hotspot = Vector2(current_size*3/64, current_size*3/64)
		Input.set_custom_mouse_cursor(load("res://cursors/" + current_cursor + "_" + str(current_size) + ".png"), hotspot)
	else:
		$cursor.texture = load("res://cursors/" + current_cursor + "_" + str(current_size) + ".png")
		Input.set_custom_mouse_cursor(null)
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_cursor_1_pressed():
	current_cursor = cursors[0]
	update_cursor()

func _on_cursor_2_pressed():
	current_cursor = cursors[1]
	update_cursor()

func _on_cursor_3_pressed():
	if toggle:
		Input.set_custom_mouse_cursor(null)
		$cursor.texture = load("res://cursors/" + current_cursor + "_" + str(current_size) + ".png")
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
		$cursor.show()
		toggle=false
		$panel/cursor_3.text = "hardware"
	else:
		$cursor.hide()
		toggle=true
		update_cursor()
		$panel/cursor_3.text = "software"

func _on_size_8_pressed():
	current_size = 8
	update_cursor()

func _on_size_16_pressed():
	current_size = 16
	update_cursor()
	
func _on_size_32_pressed():
	current_size = 32
	update_cursor()

func _on_size_64_pressed():
	current_size = 64
	update_cursor()

func _on_size_96_pressed():
	current_size = 96
	update_cursor()

func _on_size_128_pressed():
	current_size = 128
	update_cursor()

func _on_size_256_pressed():
	current_size = 256
	update_cursor()
