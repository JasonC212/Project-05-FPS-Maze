extends Control


func _ready():
	pass


func _on_Start_pressed():
	var _memes = get_tree().change_scene("res://Maze/Maze.tscn")


func _on_Quit_pressed():
	get_tree().quit()
