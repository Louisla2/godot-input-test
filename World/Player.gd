class_name Player
extends Character

var mouse_pressed = false


func _unhandled_input(event):
	if Input.is_action_pressed("Click"):
		self._move(get_global_mouse_position())
		self.mouse_pressed = true
	if Input.is_action_just_released("Click"):
		self.mouse_pressed = false

func _process(delta):
	if self.mouse_pressed:
		self._move(get_global_mouse_position())
