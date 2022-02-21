extends Area2D
class_name COINBACK

onready var sprite = get_node("PropAaaa")
var score = 0

func _on_Area2D_body_entered(body):
	if sprite.visible != false:
		sprite.visible = false
		score += 1
	else: pass

