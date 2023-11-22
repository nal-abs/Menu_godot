extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start as Button
	var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/End as Button
	start_button.pressed.connect(on_start_button)
	exit_button.pressed.connect(on_exit_button)


func on_start_button():
	var start_game = preload("res://GameScreen.tscn")
	get_tree().change_scene_to_packed(start_game)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_exit_button():
	get_tree().quit();
