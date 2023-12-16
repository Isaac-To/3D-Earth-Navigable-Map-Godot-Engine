extends MeshInstance3D

var dX = 0
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	dX += rng.randf_range(0, 1)
	rotate_y(dX * delta * 0.005)
	dX *= 0.95
	pass
