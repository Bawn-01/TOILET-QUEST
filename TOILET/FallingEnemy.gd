extends Area2D

var vel = Vector2()

func _on_Enemy_body_entered(body):
	get_tree().reload_current_scene()

func _physics_process(delta):
	pass
