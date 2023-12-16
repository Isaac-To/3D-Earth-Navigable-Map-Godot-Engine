extends StaticBody3D

const speed = 0.25

var dX = 0
var dY = 0
var dZ = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent_node_3d().rotate_x(dX * delta)
	get_parent_node_3d().rotate_y(dY * delta)
	#get_parent_node_3d().rotate_z(dZ * delta)
	dX *= 0.95
	dY *= 0.95
	#dZ *= 0.95

func _input_event(camera, event, position, normal, shape_idx):
	if Input.is_action_pressed("mouseMiddleButton"):
		dX += normal.y / 2.5 * speed
		dY += -normal.x / 2.5 * speed
		#dZ += normal.z / 2.5 * speed
		#print(position)
