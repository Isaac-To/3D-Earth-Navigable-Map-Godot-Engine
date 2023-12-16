extends Node3D

var dZ = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouseWheelUp"):
		dZ += 1
	if Input.is_action_just_pressed("mouseWheelDown"):
		dZ -= 1
	#if Input.is_action_pressed("Q"):
		#dZr -= 1
	#if Input.is_action_pressed("E"):
		#dZr += 1
	if 2.55 < position.z + dZ * delta && position.z + dZ * delta < 5:
		translate(Vector3(0, 0, dZ * delta))
	else:
		dZ = 0
	#rotate_z(dZr * delta * 0.2)
	dZ *= 0.95
	#dZr *= 0.95
