extends Spatial


func _ready():
	pass


func _on_Area_body_entered(_body):
	if Global.key == 1 :
		 var _memes = get_tree().change_scene("res://UI/Win.tscn")
