extends Node

var score = 0

@onready var score_show_1 = $Score_show
@onready var score_show_2 = $Score_show2
@onready var score_show_3 = $Score_show3
@onready var score_show_4 = $Score_show4

func add_point():
	score += 1
	print(score)
	score_show_1.text = "You collected " + str(score) + " coins till this zone."
	score_show_2.text = "You collected " + str(score) + " coins till this zone."
	score_show_3.text = "You collected " + str(score) + " coins till this zone."
	score_show_4.text = "You collected " + str(score) + " coins till this zone."
