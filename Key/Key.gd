extends Spatial


func _ready():
	pass


func _on_Area_body_entered(_body):
	Global.update_key(10)
	Global.update_score(100)
	queue_free()
