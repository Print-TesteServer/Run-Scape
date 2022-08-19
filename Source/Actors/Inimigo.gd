extends StaticBody2D

var flip = true
var starting_position
var final_position
var speed = 0.3

func _ready():	
	$AnimatedSprite.play("Run")
	starting_position = $".".position.x
	final_position = starting_position + 100
	
func _process(delta: float) -> void:
	if (starting_position <= final_position and flip == true):
		$".".position.x += speed
		$AnimatedSprite.flip_h = true
		if ($".".position.x >= final_position):
			flip = false
	if (starting_position >= starting_position and flip == false):
		$".".position.x += -speed
		$AnimatedSprite.flip_h = false
		if ($".".position.x <= starting_position):
			flip = true
