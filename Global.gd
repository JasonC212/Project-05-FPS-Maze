extends Node

var key = 0
var health = 100
var score = 0

func _ready():
	pause_mode = PAUSE_MODE_PROCESS		# global should never be paused
	key = 0
	health = 100
	score = 0

func _unhandled_input(event):
	if event.is_action_pressed("menu"):	# instead of quitting, show the menu
		#get_tree().quit()
		var menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				menu.show()
				get_tree().paused = true 	# pause the game while the menu is visible
			else:
				menu.hide()
				get_tree().paused = false

func update_score(s):
	score += s
	var Score = get_node_or_null("/root/Game/UI/Hud/Score")
	Score.text = str(score) + " : Score"

func update_key(k):
	var Key = get_node_or_null("/root/Game/UI/Hud/Key")
	if Key != null:
		if k <= 0:
			Key.text = "No Key"
			key = 0
		else:
			Key.text = "Got the Key!" 
			key = 1

func update_health(h):
	health += h
	if health <= 0:
		var _memes = get_tree().change_scene("res://UI/Lost.tscn")
	var Hud = get_node_or_null("/root/Game/UI/Hud/Health")
	if Hud != null:
		Hud.text = "Health : " + str(health)
