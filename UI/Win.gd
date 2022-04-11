extends Control


func _ready():
	$Label2.text = "Score : " + str(Global.score)


func _on_Restart_pressed():
	var _memes = get_tree().change_scene("res://Maze/Maze.tscn")


func _on_Quit_pressed():
	get_tree().quit()
