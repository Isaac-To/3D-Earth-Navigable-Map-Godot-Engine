extends StaticBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _input_event(_camera, _event, position, normal, _shape_idx):
	if Input.is_action_just_pressed("mouseLeftClick"):
		#print(position)
		var newPoint = StaticBody3D.new()
		newPoint.disable_mode = CollisionObject3D.DISABLE_MODE_KEEP_ACTIVE
		newPoint.translate(normal / 32)
		var pointMesh = MeshInstance3D.new()
		pointMesh.position = position
		pointMesh.mesh = SphereMesh.new()
		pointMesh.mesh.radius = 0.01
		pointMesh.mesh.height = 0.02
		newPoint.add_child(pointMesh)
		# NON FINALIZED MESH
		var material = StandardMaterial3D.new()
		material.emission_enabled = true
		material.emission = Color(255, 255, 255, 0)
		pointMesh.mesh.surface_set_material(0, material)
		# Add Light
		var cityLight = OmniLight3D.new()
		cityLight.light_energy = 5
		cityLight.omni_range = 5
		newPoint.add_child(cityLight)
		get_parent_node_3d().add_child(newPoint)
