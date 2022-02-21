tool

extends Area2D

export var path = ""

func _get_configuration_warning():
	if path == "":
		return "PORTAL ERROR"
	else:
		return ""


func _on_Area2D_body_entered(body):
	if get_tree().change_scene(path) != OK:
		print("portal Change Error")
