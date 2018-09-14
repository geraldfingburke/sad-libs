extends Node2D

func _ready():
	var prompt = ["Johnson City","Lift","A Computer","Crayons","Sit Down on"]
	var story = "I came in like a %s, I never %s so hard in %s, all I wanted wast to break your %s all you ever did was %s me"
	print (story % prompt)
