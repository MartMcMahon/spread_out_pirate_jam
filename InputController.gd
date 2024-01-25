extends Control
signal high_block
signal mid_block
signal low_block
signal relax

var input_block_time_counter = 0

func _ready():
	pass # Replace with function body.

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			if event.keycode == KEY_ESCAPE:
				get_tree().quit()
				
func _process(delta):
	if Input.is_action_pressed("high_block_action"):
		print('up')
		up_key(delta)
	elif Input.is_action_pressed("mid_block_action"):
		print('right')
		mid_key(delta)
	elif Input.is_action_pressed("low_block_action"):
		print('down')
		down_key(delta)
	else:
		emit_relax(delta)
		

func up_key(delta):
	self.input_block_time_counter += delta
	self.emit_signal("high_block")
	#elf.emit_signal("player_change_state", $"../Player/Control:PlayerState.high")

func mid_key(delta):
	self.input_block_time_counter += delta
	self.emit_signal("mid_block")

func down_key(delta):
	self.input_block_time_counter += delta
	self.emit_signal("low_block")

func emit_relax(delta):
	self.input_block_time_counter = 0
	self.emit_signal("relax")
