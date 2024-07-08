extends Node

var score = 0

@onready var score_show = $Score_show

func add_point():
	score += 1
	print(score)
	score_show.text = "You collected " + str(score) + " coins in this level."
