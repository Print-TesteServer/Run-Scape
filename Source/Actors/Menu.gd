extends Control

func _on_Start_pressed() -> void:
	get_tree().change_scene("res://Source/Levels/TesteLevel.tscn")

func _on_Quit_pressed() -> void:
	get_tree().quit()
