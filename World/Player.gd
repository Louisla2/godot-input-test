class_name Player
extends Character


func _ready():
	var bg = get_tree().get_root().find_node("Background", true, false)
	bg.connect("move_player", self, "_move")
	self.set_process_unhandled_input(false)
