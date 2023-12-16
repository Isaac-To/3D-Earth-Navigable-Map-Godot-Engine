extends Camera3D

var dXr = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("R"):
		dXr += 1
	if Input.is_action_pressed("F"):
		dXr -= 1
	rotate_x(dXr * 0.05 * delta)
	dXr *= 0.95
