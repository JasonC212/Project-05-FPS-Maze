extends Spatial

func _ready():
	pass # Replace with function body.


func _on_Area_body_entered(_body):
	var Orbs = get_node_or_null("/root/Game/Orbs")
	if Orbs != null:
		Orbs.play()
	Global.update_score(10)
	queue_free()
