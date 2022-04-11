extends Spatial


func _ready():
	$Explode.emitting = false


func _on_Area_body_entered(body):
	if body.name == "Player":
		var Boom = get_node_or_null("/root/Game/Boom")
		if Boom != null:
			Boom.play()
		$Timer.start()
		$Explode.emitting = true


func _on_Timer_timeout():
	$Timer.stop()
	Global.update_health(-10)
	queue_free()
