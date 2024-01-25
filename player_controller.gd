extends Control


var high_block_tex = load("res://subwayLadyPoses/high_block.png")
var mid_block_text = load("res://subwayLadyPoses/mid_block.png")
var low_block_tex = load("res://subwayLadyPoses/low_block.png")
var relaxed_tex = load("res://subwayLadyPoses/relaxed.png")

enum PlayerState {
	relaxed, low, mid, high
}

var state = PlayerState.relaxed

# Called when the node enters the scene tree for the first time.
func _ready():
	change_state(PlayerState.relaxed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_input_controller_low_block():
	self.state = PlayerState.low
	$Sprite.set_texture(low_block_tex)

func _on_input_controller_high_block():
	self.state = PlayerState.high
	$Sprite.set_texture(high_block_tex)

func _on_input_controller_mid_block():
	self.state = PlayerState.mid
	$Sprite.set_texture(mid_block_text)

func _on_input_controller_relax():
	self.state = PlayerState.relaxed
	$Sprite.set_texture(relaxed_tex)

func change_state(new_state):
	self.state = new_state
