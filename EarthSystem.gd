extends Node3D

var speed = 0.05
var edgeBuffer = 7

var dX = 0
var dY = 0
var dZ = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("W"):
		dX += 1
	if Input.is_action_pressed("A"):
		dY += 1
	if Input.is_action_pressed("S"):
		dX -= 1
	if Input.is_action_pressed("D"):
		dY -= 1
	if Input.is_action_pressed("Q"):
		dZ += 2
	if Input.is_action_pressed("E"):
		dZ -= 2
	#var mousePos = get_viewport().get_mouse_position()
	#var bufferX = get_viewport().size.x / edgeBuffer
	#var bufferY = get_viewport().size.y / edgeBuffer
	#if bufferX < mousePos.x:
		#dY -= 1
	#if mousePos.x < get_viewport().size.x - bufferX:
		#dY += 1
	#if bufferX < mousePos.y:
		#dX -= 1
	#if mousePos.y < get_viewport().size.y - bufferY:
		#dX += 1
	rotate_x(dX * delta * speed)
	rotate_y(dY * delta * speed)
	rotate_z(dZ * delta * speed)
	dX *= 0.95
	dY *= 0.95
	dZ *= 0.95
