extends Spatial

onready var state_machine
var dest

func _ready():
	state_machine = $AnimationTree.get("parameters/playback")
	state_machine.travel("run")
	dest = transform.origin + Vector3(0, 0, 10)
	
func _physics_process(_delta):
	transform.origin = transform.origin.move_toward(to_global(Vector3(0, 0, 10)), _delta * 1)
