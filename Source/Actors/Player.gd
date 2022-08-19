extends KinematicBody2D

#Constantes
const SPEED = 200
const GRAVITY = 10
const JUMP_POWER = -300
const UP = Vector2(0, -1)

#Variaveis
var velocity: = Vector2()
var life = 1

#Movimentação
func _physics_process(_delta: float) -> void:
	
	velocity.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = true
		velocity.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = false
	else:
		velocity.x = 0
		$AnimatedSprite.play("Idle")
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			velocity.y = JUMP_POWER
	else:
		$AnimatedSprite.play("Jump")
		
	velocity = move_and_slide(velocity, UP)
