extends Node

export(bool) var DEBUG = false

var state_machine
var critter: Critter


func enter():
	critter.wander()
	exit("end_turn")

func exit(next_state):
	if Globals.DEBUG or DEBUG:
		print("Exiting state: ", name)
	state_machine.change_to(next_state)

# Optional handler functions for game loop events
func process(delta):
	# Add handler code here
	return delta

func physics_process(delta):
	return delta

func input(event):
	return event

func unhandled_input(event):
	return event

func unhandled_key_input(event):
	return event

func notification(what, flag = false):
	return [what, flag]
