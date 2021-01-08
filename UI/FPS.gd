extends Label


func _process(delta):
	self.text = String(Engine.get_frames_per_second())
