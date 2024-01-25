extends Node2D

enum EnemyState {
	idle=0,
	prep_high=1,
	high_attack=2,
	prep_mid=3,
	mid_attack=4,
	prep_low=5,
	low_attack=6,
}

var state = EnemyState.idle
var state_counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.state = EnemyState.idle
	self.state_counter = 0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	state_counter += delta
	if self.state % 2==0:
		#advance_attack()
		pass
	if state_counter > 4:
		state_counter = 0
		
	pass
