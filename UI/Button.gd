extends Button


func _ready():
	self.connect("pressed", self, "button_toggled")


func button_toggled():
	print("button")
