class_name Character
extends Node2D


# some basic movement
var speed = 500
var moving = false
var start = Vector2()
var destination = Vector2()
var distance = 0
var normalized_direction = Vector2()


func _unhandled_input(event):
	if Input.is_action_pressed("Click"):
		if get_node("Sprite").get_rect().has_point(get_local_mouse_position()):
			get_tree().set_input_as_handled()
			print("Character clicked")


func _move(destination):
	self.destination = destination
	self.moving = true
	self.distance = self.position.distance_squared_to(self.destination)
	self.start = Vector2(self.position.x, self.position.y)
	var move_direction = self.destination - self.position
	self.normalized_direction = move_direction.normalized()


func _physics_process(delta):
	if moving:
		var new_pos = self.position + self.speed * delta * self.normalized_direction
		var new_distance = self.start.distance_squared_to(new_pos)
		if new_distance >= self.distance:
			self.position = self.destination
			self.moving = false
		else:
			self.position = new_pos
