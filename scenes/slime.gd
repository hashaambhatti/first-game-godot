extends Node2D

const SPEED = 50
var direction = 1

@onready var rc_left = $RCLeft
@onready var rc_right = $RCRight
@onready var slime = $AnimatedSprite2D

func _process(delta):
	
	if rc_right.is_colliding():
		direction = -1
		slime.flip_h = true
	if rc_left.is_colliding():
		direction = 1
		slime.flip_h = false
	
	position.x = SPEED * delta * direction
	
