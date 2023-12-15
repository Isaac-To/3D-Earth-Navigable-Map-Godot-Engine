extends Node3D

var dZ = 0
var dZr = 0

var speed = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouseWheelUp"):
		dZ -= 1
	if Input.is_action_just_pressed("mouseWheelDown"):
		dZ += 1
	#if Input.is_action_pressed("Q"):
		#dZr += 1
	#if Input.is_action_pressed("E"):
		#dZr -= 1
	var changeZ = dZ * delta * 4
	if self.position.z + changeZ > 2.55 && self.position.z + dZ * delta < 8:
		translate(Vector3(0, 0, changeZ * speed))
	rotate_z(dZr * delta * speed)
	dZ *= 0.95
	dZr *= 0.95
	
