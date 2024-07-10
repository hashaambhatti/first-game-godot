extends Node2D

const SPEED = 50

var direction = 1

@onready var rc_left = $RCLeft
@onready var rc_right = $RCRight
@onready var slime = $AnimatedSprite2D
@onready var rc_down = $RCDown
@onready var rc_up = $RCUp


func _process(delta):
	
	if rc_right.is_colliding():
		direction = -1
		slime.flip_h = false
		
	if rc_left.is_colliding():
		direction = 1
		slime.flip_h = true
	
	position.x += SPEED * delta * direction
	
