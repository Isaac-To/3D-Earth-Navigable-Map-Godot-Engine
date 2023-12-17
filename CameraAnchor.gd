extends Node3D

var speed = 0.25

var dYr = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Shift"):
		speed *= 2
	if Input.is_action_just_released("Shift"):
		speed /= 2
	if Input.is_action_pressed("A"):
		dYr -= 1
	if Input.is_action_pressed("D"):
		dYr += 1
	rotate_y(dYr * delta * speed)
	dYr *= 0.95
