extends Area2D

const MAX_ZOOM = Vector2(0.6,0.6)
const MIN_ZOOM = Vector2(1,1)

#export (int) var SPEED
#var velocity
var screensize


func _ready():
	screensize = get_viewport_rect().size
	
	
func _process(delta):
	move_player_virtual_stick(delta)

func move_player_virtual_stick(delta):
	position += $Analog.stick_vector * $Analog.stick_speed * 2 * delta
	#rotation = $"../Analog".stick_angle
