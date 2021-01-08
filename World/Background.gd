extends Node2D


# INFO using the move from Background -> Player because then the layer of characters/player does not matter
# looks like if the Player is always on top the unhandled input function would be called from Player first
signal move_player(destination)


# TODO does not follow the mouse if pressed and not moving, the Player should move
# endless in the direction of the mouse but stops
func _unhandled_input(event):
	if Input.is_action_pressed("Click"):
		self.emit_signal("move_player", get_global_mouse_position())


# works with the follow but ignores all other inputs which were already handled
#func _process(delta):
#	if Input.is_action_pressed("Click"):
#		self.emit_signal("move_player", get_global_mouse_position())
